
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_10__ {int nkro; int raw; } ;
struct TYPE_9__ {scalar_t__ red_mode; scalar_t__ green_mode; int raw; } ;





 void* LEDMODE_BLINKIN ;
 scalar_t__ LEDMODE_ENTER ;
 void* LEDMODE_KEY ;
 scalar_t__ LEDMODE_MODS ;
 void* LEDMODE_OFF ;
 void* LEDMODE_ON ;
 int LED_GREEN ;
 int LED_RED ;


 int _ADJUST ;
 int _COLEMAK ;
 int _DVORAK ;
 int _LOWER ;
 int _PLOVER ;
 int _QWERTY ;
 int _RAISE ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 int eeconfig_update_user (int ) ;
 TYPE_6__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 TYPE_5__ led_config ;
 int led_keypress_update (int ,scalar_t__,int,TYPE_2__*) ;
 int print (char*) ;
 int set_single_persistent_default_layer (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {



  if (led_config.red_mode >= LEDMODE_MODS && led_config.red_mode <= LEDMODE_ENTER) {
      led_keypress_update(LED_RED, led_config.red_mode, keycode, record);
  }
  if (led_config.green_mode >= LEDMODE_MODS && led_config.green_mode <= LEDMODE_ENTER) {
      led_keypress_update(LED_GREEN, led_config.green_mode, keycode, record);
  }
  switch (keycode) {
    case 128:
      if (record->event.pressed) {
        print("mode just switched to qwerty and this is a huge string\n");
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 142:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 141:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_DVORAK);
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        layer_off(_RAISE);
        layer_off(_LOWER);
        layer_off(_ADJUST);
        layer_on(_PLOVER);
        if (!eeconfig_is_enabled()) {
            eeconfig_init();
        }
        keymap_config.raw = eeconfig_read_keymap();
        keymap_config.nkro = 1;
        eeconfig_update_keymap(keymap_config.raw);
      }
      return 0;
      break;
    case 140:
      if (record->event.pressed) {
        layer_off(_PLOVER);
      }
      return 0;
      break;
    case 138:
      if (record->event.pressed) {
        if (led_config.red_mode==LEDMODE_ON) {
            led_config.red_mode=LEDMODE_OFF;
            writePinLow(LED_RED);
        }
        else {
            led_config.red_mode=LEDMODE_ON;
            writePinHigh(LED_RED);
        }
      }
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 137:
      if (record->event.pressed) {
        if (led_config.green_mode==LEDMODE_ON) {
            led_config.green_mode=LEDMODE_OFF;
            writePinLow(LED_GREEN);
        }
        else {
            led_config.green_mode=LEDMODE_ON;
            writePinHigh(LED_GREEN);
        }
      }
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 136:
      led_config.red_mode=LEDMODE_MODS;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 135:
      led_config.green_mode=LEDMODE_MODS;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 134:
      led_config.red_mode=LEDMODE_BLINKIN;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 133:
      led_config.green_mode=LEDMODE_BLINKIN;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 132:
      led_config.red_mode=LEDMODE_KEY;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 131:
      led_config.green_mode=LEDMODE_KEY;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 130:
      led_config.red_mode=LEDMODE_ENTER;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
    case 139:
      led_config.green_mode=LEDMODE_ENTER;
      eeconfig_update_user(led_config.raw);
      return 0;
      break;
  }
  return 1;
}
