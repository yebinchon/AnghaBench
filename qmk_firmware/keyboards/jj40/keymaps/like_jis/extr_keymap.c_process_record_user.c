
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



 int BL_BREATH_END () ;
 int BL_BREATH_START (int) ;


 int _ADJUST ;
 int _LOWER ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

  switch (keycode) {
    case 129:
      if (record->event.pressed) {
        BL_BREATH_START(50);
        layer_on(_LOWER);
      } else {
        BL_BREATH_END();
        layer_off(_LOWER);
      }
      break;
    case 128:
      if (record->event.pressed) {
        BL_BREATH_START(100);
        layer_on(_RAISE);
      } else {
        BL_BREATH_END();
        layer_off(_RAISE);
      }
      break;
    case 130:
      if (record->event.pressed) {
        layer_on(_ADJUST);
      } else {
        layer_off(_ADJUST);
      }
      break;
    default:
      return 1;
  }

  return 0;
}
