
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARROWS ;
 int IS_LAYER_ON (int ) ;
 int MOUSE ;
 int caps_lock_is_on ;
 int indicate_arrows_layer_state (int ) ;
 int indicate_caps_lock_state (int ) ;
 int indicate_mouse_layer_state (int ) ;

void matrix_scan_user(void) {

  indicate_caps_lock_state(caps_lock_is_on);
  indicate_arrows_layer_state(IS_LAYER_ON(ARROWS));
  indicate_mouse_layer_state(IS_LAYER_ON(MOUSE));
}
