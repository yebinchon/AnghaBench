
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_timer_t ;
struct TYPE_4__ {int (* gs_timer_destroy ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int *) ;
 TYPE_2__* thread_graphics ;

void gs_timer_destroy(gs_timer_t *timer)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_timer_destroy"))
  return;
 if (!timer)
  return;

 graphics->exports.gs_timer_destroy(timer);
}
