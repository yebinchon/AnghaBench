
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int raw; } ;
 int KC_RSFT ;


 int PLAY_SONG (int ) ;



 int SEND_STRING (char*) ;






 int _ADJUST ;
 int _COLEMAK ;
 int _DVORAK ;
 int _EMOJI ;
 int _LOWER ;
 int _PLOVER ;
 int _QWERTY ;
 int _RAISE ;
 int backlight_step () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_4__ keymap_config ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int plover_gb_song ;
 int plover_song ;
 int print (char*) ;
 int register_code (int ) ;
 int set_single_persistent_default_layer (int ) ;
 int stop_all_notes () ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 135:
      if (record->event.pressed) {
        print("mode just switched to qwerty and this is a huge string\n");
        set_single_persistent_default_layer(_QWERTY);
      }
      return 0;
      break;
    case 150:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
      }
      return 0;
      break;
    case 147:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_DVORAK);
      }
      return 0;
      break;
    case 137:
      if (record->event.pressed) {
        layer_on(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_LOWER);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        layer_on(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      } else {
        layer_off(_RAISE);
        update_tri_layer(_LOWER, _RAISE, _ADJUST);
      }
      return 0;
      break;
    case 151:
      if (record->event.pressed) {
        register_code(KC_RSFT);



      } else {
        unregister_code(KC_RSFT);
      }
      return 0;
      break;
    case 136:
      if (record->event.pressed) {




        layer_off(_RAISE);
        layer_off(_LOWER);
        layer_off(_ADJUST);
        layer_off(_EMOJI);
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
    case 146:
      if (record->event.pressed) {



        layer_off(_PLOVER);
      }
      return 0;
      break;
    case 145:
      if (record->event.pressed) {
        SEND_STRING("&fliptable;");
      }
      return 0;
      break;
    case 149:
      if (record->event.pressed) {
        SEND_STRING(":-\\");
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        SEND_STRING("&shit; ");
      }
      return 0;
      break;
    case 148:
      if (record->event.pressed) {
        SEND_STRING(":'-( ");
      }
      return 0;
      break;
    case 138:
      if (record->event.pressed) {
        SEND_STRING("&llap; ");
      }
      return 0;
      break;
    case 141:
      if (record->event.pressed) {
        SEND_STRING(":-D ");
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        SEND_STRING(":-P ");
      }
      return 0;
      break;
    case 139:
      if (record->event.pressed) {
        SEND_STRING(":-) ");
      }
      return 0;
      break;
    case 142:
      if (record->event.pressed) {
        SEND_STRING(":-( ");
      }
      return 0;
      break;
    case 140:
      if (record->event.pressed) {
        SEND_STRING("<3 ");
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        SEND_STRING("&shrug; ");
      }
      return 0;
      break;
    case 130:
      if (record->event.pressed) {
        SEND_STRING("&thumbup; ");
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        SEND_STRING("&thumbdown; ");
      }
      return 0;
      break;
    case 144:
      if (record->event.pressed) {
        SEND_STRING("&fingerleft; ");
      }
      return 0;
      break;
    case 143:
      if (record->event.pressed) {
        SEND_STRING("&fingerright; ");
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        SEND_STRING(";-) ");
      }
      return 0;
      break;
    case 152:
      if (record->event.pressed) {
        SEND_STRING("&above; ");
      }
      return 0;
      break;
  }
  return 1;
}
