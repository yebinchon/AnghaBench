
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* device_blend_function ) (int ,int,int) ;} ;
struct TYPE_5__ {int src_c; int dest_c; int src_a; int dest_a; } ;
struct TYPE_7__ {int device; TYPE_2__ exports; TYPE_1__ cur_blend_state; } ;
typedef TYPE_3__ graphics_t ;
typedef enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;


 int gs_valid (char*) ;
 int stub1 (int ,int,int) ;
 TYPE_3__* thread_graphics ;

void gs_blend_function(enum gs_blend_type src, enum gs_blend_type dest)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_blend_function"))
  return;

 graphics->cur_blend_state.src_c = src;
 graphics->cur_blend_state.dest_c = dest;
 graphics->cur_blend_state.src_a = src;
 graphics->cur_blend_state.dest_a = dest;
 graphics->exports.device_blend_function(graphics->device, src, dest);
}
