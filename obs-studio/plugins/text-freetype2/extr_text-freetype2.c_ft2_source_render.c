
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ft2_source {scalar_t__* text; int draw_effect; int * tex; int * vbuf; scalar_t__ drop_shadow; scalar_t__ outline_text; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int draw_drop_shadow (struct ft2_source*) ;
 int draw_outlines (struct ft2_source*) ;
 int draw_uv_vbuffer (int *,int *,int ,int) ;
 int gs_reset_blend_state () ;
 scalar_t__ wcslen (scalar_t__*) ;

__attribute__((used)) static void ft2_source_render(void *data, gs_effect_t *effect)
{
 struct ft2_source *srcdata = data;
 if (srcdata == ((void*)0))
  return;

 if (srcdata->tex == ((void*)0) || srcdata->vbuf == ((void*)0))
  return;
 if (srcdata->text == ((void*)0) || *srcdata->text == 0)
  return;

 gs_reset_blend_state();
 if (srcdata->outline_text)
  draw_outlines(srcdata);
 if (srcdata->drop_shadow)
  draw_drop_shadow(srcdata);

 draw_uv_vbuffer(srcdata->vbuf, srcdata->tex, srcdata->draw_effect,
   (uint32_t)wcslen(srcdata->text) * 6);

 UNUSED_PARAMETER(effect);
}
