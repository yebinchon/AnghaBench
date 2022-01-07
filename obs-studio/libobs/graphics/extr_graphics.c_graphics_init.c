
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
struct TYPE_4__ {int (* device_leave_context ) (int ) ;int (* device_blend_function_separate ) (int ,int ,void*,int ,void*) ;int (* device_enter_context ) (int ) ;} ;
struct TYPE_3__ {int enabled; void* dest_a; int src_a; void* dest_c; int src_c; } ;
struct graphics_subsystem {int device; TYPE_2__ exports; TYPE_1__ cur_blend_state; int effect_mutex; int mutex; int matrix_stack; } ;


 void* GS_BLEND_INVSRCALPHA ;
 int GS_BLEND_ONE ;
 int GS_BLEND_SRCALPHA ;
 int da_push_back (int ,struct matrix4*) ;
 int graphics_init_immediate_vb (struct graphics_subsystem*) ;
 int graphics_init_sprite_vb (struct graphics_subsystem*) ;
 int gs_init_image_deps () ;
 int matrix4_identity (struct matrix4*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int stub1 (int ) ;
 int stub2 (int ,int ,void*,int ,void*) ;
 int stub3 (int ) ;

__attribute__((used)) static bool graphics_init(struct graphics_subsystem *graphics)
{
 struct matrix4 top_mat;

 matrix4_identity(&top_mat);
 da_push_back(graphics->matrix_stack, &top_mat);

 graphics->exports.device_enter_context(graphics->device);

 if (!graphics_init_immediate_vb(graphics))
  return 0;
 if (!graphics_init_sprite_vb(graphics))
  return 0;
 if (pthread_mutex_init(&graphics->mutex, ((void*)0)) != 0)
  return 0;
 if (pthread_mutex_init(&graphics->effect_mutex, ((void*)0)) != 0)
  return 0;

 graphics->exports.device_blend_function_separate(
  graphics->device, GS_BLEND_SRCALPHA, GS_BLEND_INVSRCALPHA,
  GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);
 graphics->cur_blend_state.enabled = 1;
 graphics->cur_blend_state.src_c = GS_BLEND_SRCALPHA;
 graphics->cur_blend_state.dest_c = GS_BLEND_INVSRCALPHA;
 graphics->cur_blend_state.src_a = GS_BLEND_ONE;
 graphics->cur_blend_state.dest_a = GS_BLEND_INVSRCALPHA;

 graphics->exports.device_leave_context(graphics->device);

 gs_init_image_deps();
 return 1;
}
