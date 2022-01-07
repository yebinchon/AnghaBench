
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgblight_increase_hue_noeeprom () ;
 int rgblight_step_noeeprom () ;
 int rgblight_toggle_noeeprom () ;
 scalar_t__ tap_dance_active ;
 int tap_dance_state ;
 int timer ;
 int timer_elapsed (int ) ;
 int timer_read () ;

void dance_cycle(bool override_timer) {
  if (tap_dance_active)
  {
    if (timer_elapsed(timer) > 100 || override_timer)
    {
      switch (tap_dance_state)
      {
        case 129:
        {
          rgblight_increase_hue_noeeprom();
          break;
        }

        case 130:
        {
          rgblight_step_noeeprom();
          break;
        }

        case 128:
        {
          rgblight_toggle_noeeprom();
          break;
        }

        default:

          break;
      }

      timer = timer_read();
    }
  }
}
