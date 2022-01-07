
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* device_get_type ) () ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 scalar_t__ gs_valid (char*) ;
 int stub1 () ;
 TYPE_2__* thread_graphics ;

int gs_get_device_type(void)
{
 return gs_valid("gs_get_device_type")
         ? thread_graphics->exports.device_get_type()
         : -1;
}
