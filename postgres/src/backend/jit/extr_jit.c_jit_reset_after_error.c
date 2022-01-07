
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset_after_error ) () ;} ;


 TYPE_1__ provider ;
 scalar_t__ provider_successfully_loaded ;
 int stub1 () ;

void
jit_reset_after_error(void)
{
 if (provider_successfully_loaded)
  provider.reset_after_error();
}
