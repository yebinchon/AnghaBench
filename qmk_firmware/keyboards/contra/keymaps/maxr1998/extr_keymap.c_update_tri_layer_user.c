
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_ALGR ;
 int _FX ;
 int _NR ;
 int _NR_L3 ;
 scalar_t__ layer_state_is (int ) ;
 int register_code (int ) ;
 int unregister_code (int ) ;
 int update_tri_layer (int ,int ,int ) ;

void update_tri_layer_user(void) {
    update_tri_layer(_NR, _NR_L3, _FX);
    if (layer_state_is(_NR_L3) && !layer_state_is(_FX)) {
        register_code(KC_ALGR);
    } else {
        unregister_code(KC_ALGR);
    }
}
