
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gs_rect {int cy; int cx; int y; int x; } ;
struct TYPE_5__ {int num; } ;
struct TYPE_4__ {TYPE_2__ viewport_stack; } ;


 struct gs_rect* da_end (TYPE_2__) ;
 int da_pop_back (TYPE_2__) ;
 int gs_set_viewport (int ,int ,int ,int ) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;

void gs_viewport_pop(void)
{
 struct gs_rect *rect;

 if (!gs_valid("gs_viewport_pop"))
  return;
 if (!thread_graphics->viewport_stack.num)
  return;

 rect = da_end(thread_graphics->viewport_stack);
 gs_set_viewport(rect->x, rect->y, rect->cx, rect->cy);
 da_pop_back(thread_graphics->viewport_stack);
}
