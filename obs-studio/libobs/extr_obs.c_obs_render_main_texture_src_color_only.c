
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GS_BLEND_INVSRCALPHA ;
 int GS_BLEND_ONE ;
 int GS_BLEND_ZERO ;
 int obs_render_main_texture_internal (int ,int ,int ,int ) ;

void obs_render_main_texture_src_color_only(void)
{
 obs_render_main_texture_internal(GS_BLEND_ONE, GS_BLEND_ZERO,
      GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);
}
