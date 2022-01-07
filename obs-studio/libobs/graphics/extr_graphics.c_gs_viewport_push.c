
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_rect {int dummy; } ;
struct TYPE_2__ {int viewport_stack; } ;


 struct gs_rect* da_push_back_new (int ) ;
 int gs_get_viewport (struct gs_rect*) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;

void gs_viewport_push(void)
{
 if (!gs_valid("gs_viewport_push"))
  return;

 struct gs_rect *rect =
  da_push_back_new(thread_graphics->viewport_stack);
 gs_get_viewport(rect);
}
