
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* device_stencil_op ) (int ,int,int,int,int) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_stencil_side { ____Placeholder_gs_stencil_side } gs_stencil_side ;
typedef enum gs_stencil_op_type { ____Placeholder_gs_stencil_op_type } gs_stencil_op_type ;


 int gs_valid (char*) ;
 int stub1 (int ,int,int,int,int) ;
 TYPE_2__* thread_graphics ;

void gs_stencil_op(enum gs_stencil_side side, enum gs_stencil_op_type fail,
     enum gs_stencil_op_type zfail, enum gs_stencil_op_type zpass)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_stencil_op"))
  return;

 graphics->exports.device_stencil_op(graphics->device, side, fail, zfail,
         zpass);
}
