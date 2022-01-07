
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ft2_source {int * draw_effect; int * vbuf; int * tex; struct ft2_source* text_file; struct ft2_source* colorbuf; struct ft2_source* texbuf; struct ft2_source* text; struct ft2_source* font_style; struct ft2_source* font_name; struct ft2_source** cacheglyphs; int * font_face; } ;


 int FT_Done_Face (int *) ;
 int bfree (struct ft2_source*) ;
 int gs_effect_destroy (int *) ;
 int gs_texture_destroy (int *) ;
 int gs_vertexbuffer_destroy (int *) ;
 size_t num_cache_slots ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void ft2_source_destroy(void *data)
{
 struct ft2_source *srcdata = data;

 if (srcdata->font_face != ((void*)0)) {
  FT_Done_Face(srcdata->font_face);
  srcdata->font_face = ((void*)0);
 }

 for (uint32_t i = 0; i < num_cache_slots; i++) {
  if (srcdata->cacheglyphs[i] != ((void*)0)) {
   bfree(srcdata->cacheglyphs[i]);
   srcdata->cacheglyphs[i] = ((void*)0);
  }
 }

 if (srcdata->font_name != ((void*)0))
  bfree(srcdata->font_name);
 if (srcdata->font_style != ((void*)0))
  bfree(srcdata->font_style);
 if (srcdata->text != ((void*)0))
  bfree(srcdata->text);
 if (srcdata->texbuf != ((void*)0))
  bfree(srcdata->texbuf);
 if (srcdata->colorbuf != ((void*)0))
  bfree(srcdata->colorbuf);
 if (srcdata->text_file != ((void*)0))
  bfree(srcdata->text_file);

 obs_enter_graphics();

 if (srcdata->tex != ((void*)0)) {
  gs_texture_destroy(srcdata->tex);
  srcdata->tex = ((void*)0);
 }
 if (srcdata->vbuf != ((void*)0)) {
  gs_vertexbuffer_destroy(srcdata->vbuf);
  srcdata->vbuf = ((void*)0);
 }
 if (srcdata->draw_effect != ((void*)0)) {
  gs_effect_destroy(srcdata->draw_effect);
  srcdata->draw_effect = ((void*)0);
 }

 obs_leave_graphics();

 bfree(srcdata);
}
