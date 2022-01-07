
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int INACTIVE_DELAY ;
 int SLEEP_DELAY ;


 int fade_interval ;

 int rgblight_mode_noeeprom (int) ;

 int state ;
 int timer_elapsed (scalar_t__) ;
 scalar_t__ timer_read () ;
 int velocikey_decelerate () ;
 int velocikey_match_speed (int,int) ;

void check_state (void) {
  static uint16_t active_timer;
  if (!active_timer) {active_timer = timer_read();}
  static bool activated, deactivated, slept;
  switch (state) {
  case 131:
    if (!activated) {
      if (slept) {rgblight_mode_noeeprom(1);}
      activated = 1;
      deactivated = 0;
      slept = 0;
    }
    fade_interval = velocikey_match_speed(1, 25);
    if (timer_elapsed(active_timer) < INACTIVE_DELAY) {return;}
    active_timer = timer_read();
    state = 129;
    return;

  case 129:
    if (!deactivated) {
      deactivated = 1;
      activated = 0;
      slept = 0;
    }
    velocikey_decelerate();
    fade_interval = velocikey_match_speed(1, 25);
    if (timer_elapsed(active_timer) < SLEEP_DELAY) {return;}
    state = 128;
    return;

  case 128:
    if (!slept) {
      rgblight_mode_noeeprom(5);
      slept = 1;
      activated = 0;
      deactivated = 0;
    }
    return;

  case 130:
    return;
  }
}
