
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_texture_t ;
struct TYPE_4__ {int (* device_copy_texture_region ) (int ,int *,int ,int ,int *,int ,int ,int ,int ) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid_p (char*,int *) ;
 int stub1 (int ,int *,int ,int ,int *,int ,int ,int ,int ) ;
 TYPE_2__* thread_graphics ;

void gs_copy_texture_region(gs_texture_t *dst, uint32_t dst_x, uint32_t dst_y,
       gs_texture_t *src, uint32_t src_x, uint32_t src_y,
       uint32_t src_w, uint32_t src_h)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_copy_texture_region", dst))
  return;

 graphics->exports.device_copy_texture_region(graphics->device, dst,
           dst_x, dst_y, src, src_x,
           src_y, src_w, src_h);
}
