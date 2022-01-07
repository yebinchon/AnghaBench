
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vec2 {int dummy; } ;
struct gs_vb_data {scalar_t__ points; scalar_t__ colors; TYPE_1__* tvarray; } ;
struct ft2_source {int* text; int max_h; int* colorbuf; int custom_width; int cy; int * color; int font_face; int vbuf; } ;
struct TYPE_4__ {int xadv; int yoff; int h; int v2; int u2; int v; int u; scalar_t__ w; scalar_t__ xoff; } ;
struct TYPE_3__ {scalar_t__ array; } ;
typedef int FT_UInt ;


 int FT_Get_Char_Index (int ,int) ;
 int bfree (int*) ;
 int* bzalloc (int) ;
 struct gs_vb_data* gs_vertexbuffer_get_data (int ) ;
 int set_rect_colors2 (int*,int ,int ) ;
 int set_v2_uv (struct vec2*,int ,int ,int ,int ) ;
 int set_v3_rect (scalar_t__,float,float,float,float) ;
 TYPE_2__* src_glyph ;
 size_t wcslen (int*) ;

void fill_vertex_buffer(struct ft2_source *srcdata)
{
 struct gs_vb_data *vdata = gs_vertexbuffer_get_data(srcdata->vbuf);
 if (vdata == ((void*)0) || !srcdata->text)
  return;

 struct vec2 *tvarray = (struct vec2 *)vdata->tvarray[0].array;
 uint32_t *col = (uint32_t *)vdata->colors;

 FT_UInt glyph_index = 0;

 uint32_t dx = 0, dy = srcdata->max_h, max_y = dy;
 uint32_t cur_glyph = 0;
 size_t len = wcslen(srcdata->text);

 if (srcdata->colorbuf != ((void*)0)) {
  bfree(srcdata->colorbuf);
  srcdata->colorbuf = ((void*)0);
 }
 srcdata->colorbuf =
  bzalloc(sizeof(uint32_t) * wcslen(srcdata->text) * 6);
 for (size_t i = 0; i < len * 6; i++) {
  srcdata->colorbuf[i] = 0xFF000000;
 }

 for (size_t i = 0; i < len; i++) {
 add_linebreak:;
  if (srcdata->text[i] != L'\n')
   goto draw_glyph;
  dx = 0;
  i++;
  dy += srcdata->max_h + 4;
  if (i == wcslen(srcdata->text))
   goto skip_glyph;
  if (srcdata->text[i] == L'\n')
   goto add_linebreak;
 draw_glyph:;

  if (srcdata->text[i] == L'\r')
   goto skip_glyph;

  glyph_index =
   FT_Get_Char_Index(srcdata->font_face, srcdata->text[i]);
  if (src_glyph == ((void*)0))
   goto skip_glyph;

  if (srcdata->custom_width < 100)
   goto skip_custom_width;

  if (dx + src_glyph->xadv > srcdata->custom_width) {
   dx = 0;
   dy += srcdata->max_h + 4;
  }

 skip_custom_width:;

  set_v3_rect(vdata->points + (cur_glyph * 6),
       (float)dx + (float)src_glyph->xoff,
       (float)dy - (float)src_glyph->yoff,
       (float)src_glyph->w, (float)src_glyph->h);
  set_v2_uv(tvarray + (cur_glyph * 6), src_glyph->u, src_glyph->v,
     src_glyph->u2, src_glyph->v2);
  set_rect_colors2(col + (cur_glyph * 6), srcdata->color[0],
     srcdata->color[1]);
  dx += src_glyph->xadv;
  if (dy - (float)src_glyph->yoff + src_glyph->h > max_y)
   max_y = dy - src_glyph->yoff + src_glyph->h;
  cur_glyph++;
 skip_glyph:;
 }

 srcdata->cy = max_y;
}
