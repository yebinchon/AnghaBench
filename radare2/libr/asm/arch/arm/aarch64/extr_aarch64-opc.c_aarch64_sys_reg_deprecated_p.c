
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ aarch64_sys_reg ;


 int F_DEPRECATED ;

bfd_boolean
aarch64_sys_reg_deprecated_p (const aarch64_sys_reg *reg)
{
  return (reg->flags & F_DEPRECATED) != 0;
}
