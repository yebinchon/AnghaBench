
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_4__ {void* (* gs_texture_get_obj ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int *) ;
 void* stub1 (int *) ;
 TYPE_2__* thread_graphics ;

void *gs_texture_get_obj(gs_texture_t *tex)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_texture_get_obj", tex))
  return ((void*)0);

 return graphics->exports.gs_texture_get_obj(tex);
}
