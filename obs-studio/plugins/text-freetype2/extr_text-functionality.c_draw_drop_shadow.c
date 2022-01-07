
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_vb_data {int* colors; } ;
struct ft2_source {int* colorbuf; int text; int draw_effect; int tex; int vbuf; } ;


 int draw_uv_vbuffer (int ,int ,int ,int) ;
 int gs_matrix_identity () ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_translate3f (float,float,float) ;
 struct gs_vb_data* gs_vertexbuffer_get_data (int ) ;
 scalar_t__ wcslen (int ) ;

void draw_drop_shadow(struct ft2_source *srcdata)
{

 uint32_t *tmp;

 struct gs_vb_data *vdata = gs_vertexbuffer_get_data(srcdata->vbuf);

 if (!srcdata->text)
  return;

 tmp = vdata->colors;
 vdata->colors = srcdata->colorbuf;

 gs_matrix_push();
 gs_matrix_translate3f(4.0f, 4.0f, 0.0f);
 draw_uv_vbuffer(srcdata->vbuf, srcdata->tex, srcdata->draw_effect,
   (uint32_t)wcslen(srcdata->text) * 6);
 gs_matrix_identity();
 gs_matrix_pop();

 vdata->colors = tmp;
}
