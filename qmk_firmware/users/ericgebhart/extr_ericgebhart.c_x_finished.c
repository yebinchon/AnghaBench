
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;





 int KC_ESC ;
 int MOD_LCTL ;
 int MOD_LGUI ;
 int MOD_LSFT ;
 int ONESHOT_START ;


 int cur_dance (int *) ;
 int get_xmonad_layer () ;
 int layer_on (int) ;
 int register_code (int ) ;
 int set_oneshot_layer (int,int ) ;
 int set_oneshot_mods (int) ;
 int unregister_code (int ) ;
 TYPE_1__ xtap_state ;

void x_finished (qk_tap_dance_state_t *state, void *user_data) {
  int xmonad_layer = get_xmonad_layer();
  xtap_state.state = cur_dance(state);
  switch (xtap_state.state) {
  case 128:
    register_code(KC_ESC);
    break;
  case 129:
    layer_on(xmonad_layer);
    set_oneshot_mods (MOD_LGUI);

    break;
  case 130:
    set_oneshot_mods ((MOD_LCTL | MOD_LGUI));
    layer_on (xmonad_layer);
    set_oneshot_layer (xmonad_layer, ONESHOT_START);
    break;
  case 132:
    set_oneshot_mods (MOD_LSFT | MOD_LGUI);
    if (xmonad_layer != -1)
      layer_on(xmonad_layer);
    break;
  case 131:
    register_code(KC_ESC);
    unregister_code(KC_ESC);
    register_code(KC_ESC);



  }
}
