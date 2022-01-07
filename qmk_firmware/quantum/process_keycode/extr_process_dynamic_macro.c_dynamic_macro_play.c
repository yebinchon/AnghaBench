
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;
typedef int keyrecord_t ;
typedef scalar_t__ int8_t ;


 int DYNAMIC_MACRO_CURRENT_SLOT () ;
 int clear_keyboard () ;
 int dprintf (char*,int ) ;
 int dynamic_macro_play_user (scalar_t__) ;
 int layer_clear () ;
 int layer_state ;
 int process_record (int *) ;

void dynamic_macro_play(keyrecord_t *macro_buffer, keyrecord_t *macro_end, int8_t direction) {
    dprintf("dynamic macro: slot %d playback\n", DYNAMIC_MACRO_CURRENT_SLOT());

    layer_state_t saved_layer_state = layer_state;

    clear_keyboard();
    layer_clear();

    while (macro_buffer != macro_end) {
        process_record(macro_buffer);
        macro_buffer += direction;
    }

    clear_keyboard();

    layer_state = saved_layer_state;

    dynamic_macro_play_user(direction);
}
