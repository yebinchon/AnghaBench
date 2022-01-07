
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_vb_data {int* colors; } ;
struct ft2_source {int* colorbuf; int text; int draw_effect; int tex; int vbuf; } ;
typedef int int32_t ;


 int draw_uv_vbuffer (int ,int ,int ,int) ;
 int gs_matrix_identity () ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_translate3f (int ,int ,float) ;
 struct gs_vb_data* gs_vertexbuffer_get_data (int ) ;
 int * offsets ;
 scalar_t__ wcslen (int ) ;

void draw_outlines(struct ft2_source *srcdata)
{

 uint32_t *tmp;

 struct gs_vb_data *vdata = gs_vertexbuffer_get_data(srcdata->vbuf);

 if (!srcdata->text)
  return;

 tmp = vdata->colors;
 vdata->colors = srcdata->colorbuf;

 gs_matrix_push();
 for (int32_t i = 0; i < 8; i++) {
  gs_matrix_translate3f(offsets[i * 2], offsets[(i * 2) + 1],
          0.0f);
  draw_uv_vbuffer(srcdata->vbuf, srcdata->tex,
    srcdata->draw_effect,
    (uint32_t)wcslen(srcdata->text) * 6);
 }
 gs_matrix_identity();
 gs_matrix_pop();

 vdata->colors = tmp;
}
