
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct gs_tvertarray {int dummy; } ;
typedef int gs_vertbuffer_t ;
struct TYPE_14__ {scalar_t__ num; int array; } ;
struct TYPE_13__ {int array; } ;
struct TYPE_12__ {int array; } ;
struct TYPE_16__ {TYPE_8__* vbd; TYPE_4__* texverts; TYPE_3__ verts; TYPE_2__ colors; TYPE_1__ norms; scalar_t__ using_immediate; } ;
typedef TYPE_5__ graphics_t ;
struct TYPE_17__ {size_t num_tex; TYPE_10__* tvarray; scalar_t__ num; int colors; int normals; int points; } ;
struct TYPE_15__ {int array; int num; } ;
struct TYPE_11__ {int width; int array; } ;


 TYPE_10__* bmalloc (int) ;
 int gs_valid (char*) ;
 int gs_vbdata_destroy (TYPE_8__*) ;
 int * gs_vertexbuffer_create (TYPE_8__*,int ) ;
 int reset_immediate_arrays (TYPE_5__*) ;
 TYPE_5__* thread_graphics ;

gs_vertbuffer_t *gs_render_save(void)
{
 graphics_t *graphics = thread_graphics;
 size_t num_tex, i;

 if (!gs_valid("gs_render_save"))
  return ((void*)0);
 if (graphics->using_immediate)
  return ((void*)0);

 if (!graphics->verts.num) {
  gs_vbdata_destroy(graphics->vbd);
  return ((void*)0);
 }

 for (num_tex = 0; num_tex < 16; num_tex++)
  if (!graphics->texverts[num_tex].num)
   break;

 graphics->vbd->points = graphics->verts.array;
 graphics->vbd->normals = graphics->norms.array;
 graphics->vbd->colors = graphics->colors.array;
 graphics->vbd->num = graphics->verts.num;
 graphics->vbd->num_tex = num_tex;

 if (graphics->vbd->num_tex) {
  graphics->vbd->tvarray =
   bmalloc(sizeof(struct gs_tvertarray) * num_tex);

  for (i = 0; i < num_tex; i++) {
   graphics->vbd->tvarray[i].width = 2;
   graphics->vbd->tvarray[i].array =
    graphics->texverts[i].array;
  }
 }

 reset_immediate_arrays(graphics);

 return gs_vertexbuffer_create(graphics->vbd, 0);
}
