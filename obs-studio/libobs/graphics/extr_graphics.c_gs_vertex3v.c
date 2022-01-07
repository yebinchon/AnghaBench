
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vec3 {int dummy; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_5__ {TYPE_4__ verts; } ;
typedef TYPE_1__ graphics_t ;


 int da_push_back (TYPE_4__,struct vec3 const*) ;
 int gs_valid (char*) ;
 TYPE_1__* thread_graphics ;
 int validvertsize (TYPE_1__*,int ,char*) ;

void gs_vertex3v(const struct vec3 *v)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_vertex3v"))
  return;
 if (!validvertsize(graphics, graphics->verts.num, "gs_vertex"))
  return;

 da_push_back(graphics->verts, v);
}
