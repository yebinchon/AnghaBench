
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gs_vertbuffer_t ;
struct TYPE_6__ {size_t num; } ;
struct TYPE_5__ {int * vbd; int * immediate_vertbuffer; scalar_t__ using_immediate; TYPE_4__* texverts; TYPE_4__ verts; TYPE_4__ colors; TYPE_4__ norms; } ;
typedef TYPE_1__ graphics_t ;
typedef enum gs_draw_mode { ____Placeholder_gs_draw_mode } gs_draw_mode ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int da_free (TYPE_4__) ;
 int gs_draw (int,int ,int ) ;
 int gs_load_indexbuffer (int *) ;
 int gs_load_vertexbuffer (int *) ;
 int * gs_render_save () ;
 int gs_valid (char*) ;
 int gs_vbdata_destroy (int *) ;
 int gs_vertexbuffer_destroy (int *) ;
 int gs_vertexbuffer_flush (int *) ;
 size_t min_size (size_t,size_t) ;
 int reset_immediate_arrays (TYPE_1__*) ;
 TYPE_1__* thread_graphics ;

void gs_render_stop(enum gs_draw_mode mode)
{
 graphics_t *graphics = thread_graphics;
 size_t i, num;

 if (!gs_valid("gs_render_stop"))
  return;

 num = graphics->verts.num;
 if (!num) {
  if (!graphics->using_immediate) {
   da_free(graphics->verts);
   da_free(graphics->norms);
   da_free(graphics->colors);
   for (i = 0; i < 16; i++)
    da_free(graphics->texverts[i]);
   gs_vbdata_destroy(graphics->vbd);
  }

  return;
 }

 if (graphics->norms.num &&
     (graphics->norms.num != graphics->verts.num)) {
  blog(LOG_ERROR, "gs_render_stop: normal count does "
    "not match vertex count");
  num = min_size(num, graphics->norms.num);
 }

 if (graphics->colors.num &&
     (graphics->colors.num != graphics->verts.num)) {
  blog(LOG_ERROR, "gs_render_stop: color count does "
    "not match vertex count");
  num = min_size(num, graphics->colors.num);
 }

 if (graphics->texverts[0].num &&
     (graphics->texverts[0].num != graphics->verts.num)) {
  blog(LOG_ERROR, "gs_render_stop: texture vertex count does "
    "not match vertex count");
  num = min_size(num, graphics->texverts[0].num);
 }

 if (graphics->using_immediate) {
  gs_vertexbuffer_flush(graphics->immediate_vertbuffer);

  gs_load_vertexbuffer(graphics->immediate_vertbuffer);
  gs_load_indexbuffer(((void*)0));
  gs_draw(mode, 0, (uint32_t)num);

  reset_immediate_arrays(graphics);
 } else {
  gs_vertbuffer_t *vb = gs_render_save();

  gs_load_vertexbuffer(vb);
  gs_load_indexbuffer(((void*)0));
  gs_draw(mode, 0, 0);

  gs_vertexbuffer_destroy(vb);
 }

 graphics->vbd = ((void*)0);
}
