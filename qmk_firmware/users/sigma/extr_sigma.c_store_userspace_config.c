
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;


 int eeconfig_update_user (int ) ;
 TYPE_1__ stored_userspace_config ;

void store_userspace_config(void) {
  eeconfig_update_user(stored_userspace_config.raw);
}
