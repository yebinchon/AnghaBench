
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* device_enter_context ) (int ) ;} ;
struct TYPE_7__ {int ref; int device; TYPE_1__ exports; int mutex; } ;
typedef TYPE_2__ graphics_t ;


 int gs_leave_context () ;
 int os_atomic_inc_long (int *) ;
 int pthread_mutex_lock (int *) ;
 int ptr_valid (TYPE_2__*,char*) ;
 int stub1 (int ) ;
 TYPE_2__* thread_graphics ;

void gs_enter_context(graphics_t *graphics)
{
 if (!ptr_valid(graphics, "gs_enter_context"))
  return;

 bool is_current = thread_graphics == graphics;
 if (thread_graphics && !is_current) {
  while (thread_graphics)
   gs_leave_context();
 }

 if (!is_current) {
  pthread_mutex_lock(&graphics->mutex);
  graphics->exports.device_enter_context(graphics->device);
  thread_graphics = graphics;
 }

 os_atomic_inc_long(&graphics->ref);
}
