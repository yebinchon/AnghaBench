
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* (* device_preprocessor_name ) () ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 char const* stub1 () ;
 TYPE_2__* thread_graphics ;

const char *gs_preprocessor_name(void)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_preprocessor_name"))
  return ((void*)0);

 return graphics->exports.device_preprocessor_name();
}
