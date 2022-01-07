
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int gs_texture_t ;
typedef int gs_technique_t ;
typedef int gs_effect_t ;


 int GS_TRIS ;
 int gs_draw (int ,int ,int) ;
 int * gs_effect_get_technique (int *,char const*) ;
 int gs_set_render_target (int *,int *) ;
 size_t gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 int gs_texture_get_height (int *) ;
 int gs_texture_get_width (int *) ;
 int set_render_size (int const,int const) ;

__attribute__((used)) static void render_convert_plane(gs_effect_t *effect, gs_texture_t *target,
     const char *tech_name)
{
 gs_technique_t *tech = gs_effect_get_technique(effect, tech_name);

 const uint32_t width = gs_texture_get_width(target);
 const uint32_t height = gs_texture_get_height(target);

 gs_set_render_target(target, ((void*)0));
 set_render_size(width, height);

 size_t passes = gs_technique_begin(tech);
 for (size_t i = 0; i < passes; i++) {
  gs_technique_begin_pass(tech, i);
  gs_draw(GS_TRIS, 0, 3);
  gs_technique_end_pass(tech);
 }
 gs_technique_end(tech);
}
