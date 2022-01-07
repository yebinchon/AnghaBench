
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct gs_effect {struct gs_effect* next; } ;
struct TYPE_7__ {int (* device_destroy ) (scalar_t__) ;int (* gs_vertexbuffer_destroy ) (int ) ;int (* device_enter_context ) (scalar_t__) ;} ;
struct TYPE_8__ {scalar_t__ module; int blend_state_stack; int viewport_stack; int matrix_stack; int effect_mutex; int mutex; scalar_t__ device; TYPE_1__ exports; int immediate_vertbuffer; int sprite_buffer; struct gs_effect* first_effect; } ;
typedef TYPE_2__ graphics_t ;


 int bfree (TYPE_2__*) ;
 int da_free (int ) ;
 int gs_effect_actually_destroy (struct gs_effect*) ;
 int gs_free_image_deps () ;
 int gs_leave_context () ;
 int os_dlclose (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;
 int ptr_valid (TYPE_2__*,char*) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (scalar_t__) ;
 TYPE_2__* thread_graphics ;

void gs_destroy(graphics_t *graphics)
{
 if (!ptr_valid(graphics, "gs_destroy"))
  return;

 while (thread_graphics)
  gs_leave_context();

 if (graphics->device) {
  struct gs_effect *effect = graphics->first_effect;

  thread_graphics = graphics;
  graphics->exports.device_enter_context(graphics->device);

  while (effect) {
   struct gs_effect *next = effect->next;
   gs_effect_actually_destroy(effect);
   effect = next;
  }

  graphics->exports.gs_vertexbuffer_destroy(
   graphics->sprite_buffer);
  graphics->exports.gs_vertexbuffer_destroy(
   graphics->immediate_vertbuffer);
  graphics->exports.device_destroy(graphics->device);

  thread_graphics = ((void*)0);
 }

 pthread_mutex_destroy(&graphics->mutex);
 pthread_mutex_destroy(&graphics->effect_mutex);
 da_free(graphics->matrix_stack);
 da_free(graphics->viewport_stack);
 da_free(graphics->blend_state_stack);
 if (graphics->module)
  os_dlclose(graphics->module);
 bfree(graphics);

 gs_free_image_deps();
}
