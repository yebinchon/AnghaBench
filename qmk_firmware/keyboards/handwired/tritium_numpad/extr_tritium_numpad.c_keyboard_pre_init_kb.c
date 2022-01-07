
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int keyboard_pre_init_user () ;
 int led_init_ports () ;

void keyboard_pre_init_kb(void) {


 keyboard_pre_init_user();
 led_init_ports();
}
