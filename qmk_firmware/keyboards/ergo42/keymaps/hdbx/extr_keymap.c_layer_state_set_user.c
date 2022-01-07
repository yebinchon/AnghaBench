
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int biton32 (int ) ;
 int rgblight_setrgb_chartreuse () ;
 int rgblight_setrgb_pink () ;
 int rgblight_setrgb_red () ;
 int rgblight_setrgb_teal () ;
 int update_tri_layer_state (int ,int,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
  state = update_tri_layer_state(state, 128, 129, 130);
return state;
}
