
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeconfig_update_user (int ) ;

__attribute__((weak)) void eeconfig_init_user(void) {

    eeconfig_update_user(0);
}
