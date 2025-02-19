
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int capacity; int array; } ;
struct TYPE_13__ {int capacity; int array; } ;
struct TYPE_12__ {int capacity; int array; } ;
struct TYPE_16__ {int using_immediate; TYPE_5__* texverts; TYPE_4__ colors; TYPE_3__ norms; TYPE_2__ verts; TYPE_9__* vbd; int immediate_vertbuffer; } ;
typedef TYPE_6__ graphics_t ;
struct TYPE_17__ {TYPE_1__* tvarray; int colors; int normals; int points; } ;
struct TYPE_15__ {int capacity; int array; } ;
struct TYPE_11__ {int array; } ;


 int IMMEDIATE_COUNT ;
 int gs_valid (char*) ;
 TYPE_9__* gs_vbdata_create () ;
 TYPE_9__* gs_vertexbuffer_get_data (int ) ;
 int memset (int ,int,int) ;
 int reset_immediate_arrays (TYPE_6__*) ;
 TYPE_6__* thread_graphics ;

void gs_render_start(bool b_new)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_render_start"))
  return;

 graphics->using_immediate = !b_new;
 reset_immediate_arrays(graphics);

 if (b_new) {
  graphics->vbd = gs_vbdata_create();
 } else {
  graphics->vbd = gs_vertexbuffer_get_data(
   graphics->immediate_vertbuffer);
  memset(graphics->vbd->colors, 0xFF,
         sizeof(uint32_t) * IMMEDIATE_COUNT);

  graphics->verts.array = graphics->vbd->points;
  graphics->norms.array = graphics->vbd->normals;
  graphics->colors.array = graphics->vbd->colors;
  graphics->texverts[0].array = graphics->vbd->tvarray[0].array;

  graphics->verts.capacity = IMMEDIATE_COUNT;
  graphics->norms.capacity = IMMEDIATE_COUNT;
  graphics->colors.capacity = IMMEDIATE_COUNT;
  graphics->texverts[0].capacity = IMMEDIATE_COUNT;
 }
}
