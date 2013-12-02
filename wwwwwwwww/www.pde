class Timer {
  int currentTime = 0;
  int oldTime = 0;
  color wow;

  Timer() {
    wow = color(255, 255, 255);
  }

  void show() {
    currentTime = millis();

    if (currentTime-oldTime >= 20) {
      wow = color(60, 60, random(255));
      oldTime = currentTime;
    }

    fill(wow);
    textSize(25);
    text(millis(), width/2, height/2);
  }
}

