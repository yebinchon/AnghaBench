
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int clear_keyboard_but_mods () ;
 int clear_keyboard_but_mods_and_keys () ;
 int debug (char*) ;
 int default_layer_debug () ;
 int default_layer_state ;
 int default_layer_state_set_kb (int ) ;

__attribute__((used)) static void default_layer_state_set(layer_state_t state) {
    state = default_layer_state_set_kb(state);
    debug("default_layer_state: ");
    default_layer_debug();
    debug(" to ");
    default_layer_state = state;
    default_layer_debug();
    debug("\n");



    clear_keyboard_but_mods_and_keys();

}
