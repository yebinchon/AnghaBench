
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int layer_off (int ) ;
 int layer_on (int ) ;
 int layer_state_is (int ) ;
 int register_code (int) ;
 int unregister_code (int) ;

void press_without(int pressed, int key, uint8_t layer)
{
  static bool was_on;
  if (pressed) {
    was_on = layer_state_is(layer);
    layer_off(layer);
    register_code(key);
  } else {
    if (was_on) layer_on(layer);
    unregister_code(key);
  }
}
