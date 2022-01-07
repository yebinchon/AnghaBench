
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int clear_keyboard_but_mods () ;
 int clear_keyboard_but_mods_and_keys () ;
 int dprint (char*) ;
 int dprintln () ;
 int layer_debug () ;
 int layer_state ;
 int layer_state_set_kb (int ) ;

void layer_state_set(layer_state_t state) {
    state = layer_state_set_kb(state);
    dprint("layer_state: ");
    layer_debug();
    dprint(" to ");
    layer_state = state;
    layer_debug();
    dprintln();



    clear_keyboard_but_mods_and_keys();

}
