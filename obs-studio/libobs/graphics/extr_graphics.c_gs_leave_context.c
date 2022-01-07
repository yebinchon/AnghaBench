
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* device_leave_context ) (int ) ;} ;
struct TYPE_5__ {int mutex; int device; TYPE_1__ exports; int ref; } ;
typedef TYPE_2__ graphics_t ;


 scalar_t__ gs_valid (char*) ;
 int os_atomic_dec_long (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;
 TYPE_2__* thread_graphics ;

void gs_leave_context(void)
{
 if (gs_valid("gs_leave_context")) {
  if (!os_atomic_dec_long(&thread_graphics->ref)) {
   graphics_t *graphics = thread_graphics;

   graphics->exports.device_leave_context(
    graphics->device);
   pthread_mutex_unlock(&graphics->mutex);
   thread_graphics = ((void*)0);
  }
 }
}
