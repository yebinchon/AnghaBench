
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyrecord_t ;


 int clear_keyboard () ;
 int dprintln (char*) ;
 int dynamic_macro_record_start_user () ;
 int layer_clear () ;

void dynamic_macro_record_start(keyrecord_t **macro_pointer, keyrecord_t *macro_buffer) {
    dprintln("dynamic macro recording: started");

    dynamic_macro_record_start_user();

    clear_keyboard();
    layer_clear();
    *macro_pointer = macro_buffer;
}
