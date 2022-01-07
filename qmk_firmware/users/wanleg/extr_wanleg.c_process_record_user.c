
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


 int DIR ;

 int ETC ;




 int GK50 ;
 int NUM ;


 int ONE ;

 int PAD ;


 int RGBLIGHT_MODE_BREATHING ;
 int RGBLIGHT_MODE_KNIGHT ;
 int RGBLIGHT_MODE_STATIC_LIGHT ;
 int SUB ;

 int SUP ;

 int _FN ;
 int _GK ;
 int _QW ;
 int gDIR ;

 int gETC ;


 int gGK ;
 int gNUM ;

 int layer_off (int ) ;
 int layer_on (int ) ;
 int rgblight_enable_noeeprom () ;
 int rgblight_mode_noeeprom (int ) ;
 int rgblight_sethsv_noeeprom (int,int,int) ;
 int rgblight_sethsv_noeeprom_red () ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 135:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_QW);




      }
      return 0;
      break;
    case 140:
      if (record->event.pressed) {
        set_single_persistent_default_layer(_GK);



      }
      return 0;
      break;
    case 129:
      if (record->event.pressed) {
        set_single_persistent_default_layer(gGK);




      }
      return 0;
      break;
    case 136:
    if (record->event.pressed) {
      set_single_persistent_default_layer(ONE);
      }
      return 0;
      break;
    case 137:
    if (record->event.pressed) {
      set_single_persistent_default_layer(PAD);
      }
      return 0;
      break;
    case 139:
    if (record->event.pressed) {
      set_single_persistent_default_layer(GK50);
      }
      return 0;
      break;
    case 133:
      if (record->event.pressed) {
        layer_on(SUB);
      } else {
        layer_off(SUB);
      }
      return 0;
      break;
    case 132:
      if (record->event.pressed) {
        layer_on(SUP);
      } else {
        layer_off(SUP);
      }
      return 0;
      break;
 case 138:
      if (record->event.pressed) {
        layer_on(NUM);
      } else {
        layer_off(NUM);
      }
      return 0;
      break;
 case 143:
      if (record->event.pressed) {
        layer_on(DIR);
      } else {
        layer_off(DIR);
      }
      return 0;
      break;
 case 142:
      if (record->event.pressed) {
        layer_on(ETC);
      } else {
        layer_off(ETC);
      }
      return 0;
      break;
  case 128:
      if (record->event.pressed) {
        layer_on(gNUM);
      } else {
        layer_off(gNUM);
      }
      return 0;
      break;
  case 131:
      if (record->event.pressed) {
        layer_on(gDIR);
      } else {
        layer_off(gDIR);
      }
      return 0;
      break;
 case 130:
      if (record->event.pressed) {
        layer_on(gETC);
      } else {
        layer_off(gETC);
      }
      return 0;
      break;
 case 141:
      if (record->event.pressed) {
        layer_on(_FN);
      } else {
        layer_off(_FN);
      }
      return 0;
      break;

  case 134:
      if (record->event.pressed) {





      }
      return 1;
      break;
  }
  return 1;
}
