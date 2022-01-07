
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


 int FN_A ;
 int FN_D ;
 scalar_t__ LY_0000 ;
 int cur_layer_code ;
 int layer_off (scalar_t__) ;
 int layer_on (scalar_t__) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  uint16_t mask = 1 << (3 - (keycode - FN_A));
  if (!process_record_dynamic_macro(keycode, record))
    return 0;
  if(FN_A <= keycode && keycode <= FN_D) {
    if(!(cur_layer_code & mask) == record->event.pressed) {
      layer_off(cur_layer_code + LY_0000);
      cur_layer_code ^= mask;
      layer_on(cur_layer_code + LY_0000);
    }
    return 0;
  }
  return 1;
}
