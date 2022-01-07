
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeconfig_init_user () ;
 int eeconfig_update_kb (int ) ;

__attribute__((weak)) void eeconfig_init_kb(void) {

    eeconfig_update_kb(0);

    eeconfig_init_user();
}
