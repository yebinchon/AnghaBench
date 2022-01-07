
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_2 ;
 int KC_LOCKING_CAPS ;


 int KC_Y ;
 int MOD_BIT (int const) ;
 int MOD_MASK_NONE ;
 int MOD_MASK_SHIFT ;


 int NEO_3 ;
 int USB_LED_CAPS_LOCK ;
 int capslock_state ;
 int host_keyboard_leds () ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int neo3_state ;
 int neo3_timer ;
 int process_record_user_shifted (int,TYPE_2__*) ;
 int register_code (int ) ;
 int tap_with_modifiers (int ,int) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 131:
      if (record->event.pressed) {
        capslock_state |= (MOD_BIT(131));
      } else {
        capslock_state &= ~(MOD_BIT(131));
      }
      break;
    case 130:
      if (record->event.pressed) {
        capslock_state |= MOD_BIT(130);
      } else {
        capslock_state &= ~(MOD_BIT(130));
      }
      break;
    case 129:
      if (record->event.pressed) {
        layer_on(NEO_3);
        neo3_state |= (1 << 1);
      } else {

        if ((neo3_state & ~(1 << 1)) == 0) {
          layer_off(NEO_3);
        }
        neo3_state &= ~(1 << 1);
      }
      break;
    case 128:
      if (record->event.pressed) {
        neo3_timer = timer_read();
        neo3_state |= (1 << 2);
        layer_on(NEO_3);
      } else {

        if ((neo3_state & ~(1 << 2)) == 0) {
          layer_off(NEO_3);
        }
        neo3_state &= ~(1 << 2);


        if (timer_elapsed(neo3_timer) <= 150) {
          if (neo3_state > 0) {

            tap_with_modifiers(KC_2, MOD_MASK_SHIFT);
            return 0;
          } else {

            tap_with_modifiers(KC_Y, MOD_MASK_NONE);
            return 0;
          }
        }
      }
      break;
  }

  if ((capslock_state & MOD_MASK_SHIFT) == MOD_MASK_SHIFT) {

    if (host_keyboard_leds() & (1 << USB_LED_CAPS_LOCK)) {
      unregister_code(KC_LOCKING_CAPS);
    } else {
      register_code(KC_LOCKING_CAPS);
    }
    return 0;
  }

  return process_record_user_shifted(keycode, record);
}
