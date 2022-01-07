
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyrecord_t ;
typedef int int8_t ;


 int dynamic_macro_led_blink () ;

__attribute__((weak)) void dynamic_macro_record_key_user(int8_t direction, keyrecord_t *record) { dynamic_macro_led_blink(); }
