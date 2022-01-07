
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ RGBLIGHT_VAL_STEP ;
 int rgblight_decrease_val () ;
 int rgblight_increase_val () ;
 int wait_ms (int) ;

void rgblight_fade_helper(bool direction){


  for (uint8_t index = 0; index < RGBLIGHT_VAL_STEP ; index++) {
    direction ? rgblight_increase_val() : rgblight_decrease_val();
    wait_ms(5);
  }
}
