
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* device_blend_function_separate ) (int ,int,int,int,int) ;} ;
struct TYPE_6__ {int src_c; int dest_c; int src_a; int dest_a; } ;
struct TYPE_7__ {int device; TYPE_1__ exports; TYPE_2__ cur_blend_state; } ;
typedef TYPE_3__ graphics_t ;
typedef enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;


 int gs_valid (char*) ;
 int stub1 (int ,int,int,int,int) ;
 TYPE_3__* thread_graphics ;

void gs_blend_function_separate(enum gs_blend_type src_c,
    enum gs_blend_type dest_c,
    enum gs_blend_type src_a,
    enum gs_blend_type dest_a)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_blend_function_separate"))
  return;

 graphics->cur_blend_state.src_c = src_c;
 graphics->cur_blend_state.dest_c = dest_c;
 graphics->cur_blend_state.src_a = src_a;
 graphics->cur_blend_state.dest_a = dest_a;
 graphics->exports.device_blend_function_separate(
  graphics->device, src_c, dest_c, src_a, dest_a);
}
