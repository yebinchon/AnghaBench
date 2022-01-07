
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_texture_t ;
struct TYPE_4__ {int (* device_copy_texture ) (int ,int *,int *) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p2 (char*,int *,int *) ;
 int stub1 (int ,int *,int *) ;
 TYPE_2__* thread_graphics ;

void gs_copy_texture(gs_texture_t *dst, gs_texture_t *src)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p2("gs_copy_texture", dst, src))
  return;

 graphics->exports.device_copy_texture(graphics->device, dst, src);
}
