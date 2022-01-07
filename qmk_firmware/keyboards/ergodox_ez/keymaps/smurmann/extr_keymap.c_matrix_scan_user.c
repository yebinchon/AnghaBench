
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int mods; } ;


 int KC_LALT ;
 int KC_LCTRL ;
 int KC_LSFT ;
 int LED_BRIGHTNESS_HI ;
 int LED_BRIGHTNESS_LO ;
 int MOD_BIT (int ) ;
 int biton32 (int ) ;
 scalar_t__ capsOn ;
 int ergodox_right_led_1_off () ;
 int ergodox_right_led_1_on () ;
 int ergodox_right_led_1_set (int ) ;
 int ergodox_right_led_2_off () ;
 int ergodox_right_led_2_on () ;
 int ergodox_right_led_2_set (int ) ;
 int ergodox_right_led_3_off () ;
 int ergodox_right_led_3_on () ;
 int ergodox_right_led_3_set (int ) ;
 TYPE_1__* keyboard_report ;
 int layer_state ;

void matrix_scan_user(void) {
   uint8_t layer = biton32(layer_state);

   if(layer == 1)
   {
      ergodox_right_led_2_on();
      ergodox_right_led_3_on();

      ergodox_right_led_2_set (LED_BRIGHTNESS_HI);
      ergodox_right_led_3_set (LED_BRIGHTNESS_HI);
   }

   if(capsOn)
   {
      ergodox_right_led_1_set (LED_BRIGHTNESS_HI);
      ergodox_right_led_1_on ();
   }

  if(keyboard_report->mods & MOD_BIT(KC_LSFT))
  {
      ergodox_right_led_1_set (LED_BRIGHTNESS_HI);
      ergodox_right_led_1_on ();
  } else {
      ergodox_right_led_1_set (LED_BRIGHTNESS_LO);

      if(!capsOn)
      {
        ergodox_right_led_1_off ();
      }
  }

  if(keyboard_report->mods & MOD_BIT(KC_LALT))
  {
      ergodox_right_led_2_set (LED_BRIGHTNESS_HI);
      ergodox_right_led_2_on ();
  } else {
      ergodox_right_led_2_set (LED_BRIGHTNESS_LO);
     if(layer != 1)
     {
       ergodox_right_led_2_off ();
     }
  }

  if(keyboard_report->mods & MOD_BIT(KC_LCTRL))
  {
      ergodox_right_led_3_set (LED_BRIGHTNESS_HI);
      ergodox_right_led_3_on ();
  } else {
      ergodox_right_led_3_set (LED_BRIGHTNESS_LO);
     if(layer != 1)
     {
       ergodox_right_led_3_off ();
     }
  }
}
