
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int * ANSWERS ;

 size_t NO_BREAK ;
 int NUM_ANSWERS ;
 int RAND_MAX ;
 size_t UNCERTAIN_BREAK ;
 int lastTime ;
 size_t rand () ;
 int rgblight_mode (int) ;
 int rgblight_setrgb_green () ;
 int rgblight_setrgb_red () ;
 int rgblight_setrgb_yellow () ;
 int send_string (int ) ;
 int timer_read32 () ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
  case 128:
    if (record->event.pressed) {
      uint8_t num = rand() / (RAND_MAX / NUM_ANSWERS + 1);
      rgblight_mode(1);
      if (num < UNCERTAIN_BREAK) {
        rgblight_setrgb_green();
      } else if (num < NO_BREAK) {
        rgblight_setrgb_yellow();
      } else {
        rgblight_setrgb_red();
      }
      send_string(ANSWERS[num]);
      lastTime = timer_read32();
      return 0;
    }
  }
  return 1;
}
