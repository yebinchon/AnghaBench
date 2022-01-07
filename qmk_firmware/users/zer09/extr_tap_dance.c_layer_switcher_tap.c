
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ _BL ;
 scalar_t__ _GM ;
 scalar_t__ active_layer ;
 int gm_layer_act ;
 int layer_off (scalar_t__) ;
 int layer_on (scalar_t__) ;

void layer_switcher_tap(uint8_t new_layer) {
  if (gm_layer_act == 1) {
    layer_off(active_layer);
    if (new_layer == _BL) {
      layer_on(_GM);
      active_layer = _GM;
    } else {
      layer_on(new_layer);
      active_layer = new_layer;
    }
  } else {
    layer_off(active_layer);
    layer_on(new_layer);
    active_layer = new_layer;
  }
}
