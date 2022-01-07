
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int num; } ;
struct TYPE_5__ {TYPE_4__ colors; } ;
typedef TYPE_1__ graphics_t ;


 int da_push_back (TYPE_4__,int *) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;
 int validvertsize (TYPE_1__*,int ,char*) ;

void gs_color(uint32_t color)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_color"))
  return;
 if (!validvertsize(graphics, graphics->colors.num, "gs_color"))
  return;

 da_push_back(graphics->colors, &color);
}
