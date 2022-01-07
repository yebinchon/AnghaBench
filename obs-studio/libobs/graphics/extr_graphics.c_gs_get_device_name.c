
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* (* device_get_name ) () ;} ;
struct TYPE_4__ {TYPE_1__ exports; } ;


 scalar_t__ gs_valid (char*) ;
 char const* stub1 () ;
 TYPE_2__* thread_graphics ;

const char *gs_get_device_name(void)
{
 return gs_valid("gs_get_device_name")
         ? thread_graphics->exports.device_get_name()
         : ((void*)0);
}
