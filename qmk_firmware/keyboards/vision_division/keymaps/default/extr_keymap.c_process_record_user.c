
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_7__ {TYPE_2__ event; TYPE_1__ tap; } ;
typedef TYPE_3__ keyrecord_t ;


 int KC_C ;
 int KC_LCTL ;
 int KC_X ;
 int LAYER_ADJUST ;
 int LAYER_LOWER ;
 int LAYER_MOUSE ;
 int LAYER_UPPER ;




 int TEMPO_DEFAULT ;
 int TIMBRE_12 ;
 int TIMBRE_25 ;
 int TIMBRE_50 ;
 int TIMBRE_75 ;
 int TIMBRE_DEFAULT ;







 int breathing_period_set (int) ;
 int breathing_pulse () ;
 int decrease_tempo (int) ;
 int increase_tempo (int) ;
 int layer_invert (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_code (int ) ;
 int set_tempo (int ) ;
 int set_timbre (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 138:
        if (record->event.pressed) {
            register_code(KC_LCTL);
            if (record->tap.count == 1) {
                register_code(KC_C);
                unregister_code(KC_C);
            } else if (record->tap.count == 2) {
                register_code(KC_X);
                unregister_code(KC_X);
            }
            unregister_code(KC_LCTL);
        }
        return 0;

  case 135:
    if (record->event.pressed) {
      layer_on(LAYER_UPPER);
      breathing_period_set(2);
      breathing_pulse();
      update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
    } else {
      layer_off(LAYER_UPPER);
      update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
    }
    return 0;

  case 137:
    if (record->event.pressed) {
      layer_on(LAYER_LOWER);
      breathing_period_set(2);
      breathing_pulse();
      update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
    } else {
      layer_off(LAYER_LOWER);
      update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
    }
    return 0;
  default:
    return 1;
  }
  return 1;
}
