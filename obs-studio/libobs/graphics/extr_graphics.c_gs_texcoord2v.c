
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vec2 {int dummy; } ;
struct TYPE_5__ {TYPE_4__* texverts; } ;
typedef TYPE_1__ graphics_t ;
struct TYPE_6__ {int num; } ;


 int da_push_back (TYPE_4__,struct vec2 const*) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;
 int validvertsize (TYPE_1__*,int ,char*) ;

void gs_texcoord2v(const struct vec2 *v, int unit)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_texcoord2v"))
  return;
 if (!validvertsize(graphics, graphics->texverts[unit].num,
      "gs_texcoord"))
  return;

 da_push_back(graphics->texverts[unit], v);
}
