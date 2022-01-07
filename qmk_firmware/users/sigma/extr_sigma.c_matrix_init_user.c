
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int os_target; int raw; } ;
struct TYPE_3__ {int raw; } ;


 int eeconfig_read_user () ;
 TYPE_2__ runtime_userspace_config ;
 int set_os (int ) ;
 TYPE_1__ stored_userspace_config ;

void matrix_init_user(void) {
  stored_userspace_config.raw = eeconfig_read_user();
  runtime_userspace_config.raw = stored_userspace_config.raw;

  set_os(runtime_userspace_config.os_target);
}
