
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dynamic_macro_led_blink () ;

__attribute__((weak)) void dynamic_macro_record_start_user(void) { dynamic_macro_led_blink(); }
