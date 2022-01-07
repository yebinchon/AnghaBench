
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




 int _HL ;
 int _LL ;
 int layer_off (int ) ;
 int layer_on (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 129:
      if (record->event.pressed) {
        layer_on(_HL);
      }else{
        layer_off(_HL);
        layer_off(_LL);
      }
      return 0;
      break;
    case 128:
      if (record->event.pressed) {
        layer_on(_LL);
      }else{
        layer_off(_LL);
        layer_off(_HL);
      }
      return 0;
      break;
  }
  return 1;
}
