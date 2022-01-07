
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int BACKLIGHT_LEVELS ;


 int KC_LGUI ;







 int _COLEMAK ;
 int _CONFIG ;
 int _DUAL ;
 int _LLAYER ;
 int _QWERTY ;
 int _RLAYER ;
 int backlight_decrease () ;
 int backlight_increase () ;
 int backlight_toggle () ;
 int blSteps ;
 int configOn ;
 void* get_backlight_level () ;
 int layerBLStep ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int llocked ;
 void* lockedBLLevel ;
 void* momentaryLBLLevel ;
 void* momentaryRBLLevel ;
 int rlocked ;
 int set_single_persistent_default_layer (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 130:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QWERTY);
        configOn = 0;
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          backlight_toggle();
        }
      }
      return 0;
      break;
    case 136:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_COLEMAK);
        configOn = 0;
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          backlight_toggle();
        }
      }
      return 0;
      break;
    case 135:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_CONFIG);
        configOn = 1;
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          backlight_toggle();
        }
      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        layer_on(_RLAYER);
        update_tri_layer(_RLAYER, _LLAYER, _DUAL);
        momentaryRBLLevel = get_backlight_level();
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          for (int i = 0; i < layerBLStep ; i++){
            backlight_increase();
          }
        }
      } else {
        unregister_code(KC_LGUI);
        layer_off(_RLAYER);
        update_tri_layer(_RLAYER, _LLAYER, _DUAL);
        if ( llocked == 0 && configOn == 0 ) {
          for (int i = 0; i < layerBLStep ; i++){
            backlight_decrease();
          }
        } else {
        }
        rlocked = 0;
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        layer_on(_LLAYER);
        update_tri_layer(_RLAYER, _LLAYER, _DUAL);
        momentaryLBLLevel = get_backlight_level();
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          for (int i = 0; i < layerBLStep ; i++){
            backlight_increase();
          }
        }
      } else {
        layer_off(_LLAYER);
        update_tri_layer(_RLAYER, _LLAYER, _DUAL);
        if ( rlocked == 0 && configOn == 0 ) {
          for (int i = 0; i < layerBLStep ; i++){
            backlight_decrease();
          }
        } else {
        }
        llocked = 0;
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_RLAYER);

        if (rlocked == 0 && llocked == 0){
          lockedBLLevel = get_backlight_level();
        }
        rlocked = 1;
      } else {
      }
      return 0;
      break;
    case 131:
      if (record->event.pressed) {
        layer_on(_LLAYER);

        if (rlocked == 0 && llocked == 0){
          lockedBLLevel = get_backlight_level();
        }
        llocked = 1;
      } else {
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        for (int i = 0; i < (BACKLIGHT_LEVELS / blSteps ) ; i++ ){
          backlight_increase();
        }
      } else {
      }
      return 0;
      break;
    case 134:
      if (record->event.pressed) {
        for (int i = 0; i < (BACKLIGHT_LEVELS / blSteps ) ; i++ ){
          backlight_decrease();
        }
      } else {
      }
      return 0;
      break;
  }
  return 1;
}
