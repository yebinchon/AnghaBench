
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





 unsigned long _CM ;
 unsigned long _DV ;
 unsigned long _QW ;
 int persistent_default_layer_set (unsigned long) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
      switch(keycode) {
        case 129:
          if (record->event.pressed) {
            persistent_default_layer_set(1UL<<_DV);
          }
          return 0;
        case 128:
          if (record->event.pressed) {
            persistent_default_layer_set(1UL<<_QW);
          }
          return 0;
        case 130:
          if (record->event.pressed) {
            persistent_default_layer_set(1UL<<_CM);
          }
          return 0;
        default:
          return 1;
      }
    return 1;
}
