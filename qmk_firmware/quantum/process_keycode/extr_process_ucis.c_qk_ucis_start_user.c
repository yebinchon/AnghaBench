
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_hex (int) ;
 int unicode_input_finish () ;
 int unicode_input_start () ;

__attribute__((weak)) void qk_ucis_start_user(void) {
    unicode_input_start();
    register_hex(0x2328);
    unicode_input_finish();
}
