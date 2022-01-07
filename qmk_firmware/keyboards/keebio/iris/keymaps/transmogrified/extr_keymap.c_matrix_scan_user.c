
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BACKLIGHT_LEVELS ;
 int backlight_decrease () ;
 int backlight_increase () ;
 int backlight_step () ;
 int breathPulse ;
 int breathPulseStall ;
 int breathUp ;
 int counter ;
 int currentBL ;
 scalar_t__ get_backlight_level () ;
 scalar_t__ llocked ;
 scalar_t__ lockedBLLevel ;
 int resetBL ;
 scalar_t__ rlocked ;

void matrix_scan_user(void) {

  if (lockedBLLevel != 0 && (rlocked || llocked)){

    if (counter >= breathPulse) {
      counter = 0;

      if (breathUp){
        backlight_increase();
      } else {
        backlight_decrease();
      }

      currentBL = get_backlight_level();
      if (currentBL >= BACKLIGHT_LEVELS){
        breathUp = 0;

        counter = ((BACKLIGHT_LEVELS * breathPulseStall) * (-1));
      } else if (currentBL == 0){
        breathUp = 1;

        counter = ((BACKLIGHT_LEVELS * breathPulseStall) * (-1));
      }

      resetBL = 1;
    } else {
      counter++;
    }
  } else {

    if (resetBL){
      int i = 0;

      while (get_backlight_level() != lockedBLLevel && i <= BACKLIGHT_LEVELS ){
        backlight_step();
        i++;
      }
      resetBL = 0;
    }
  }
}
