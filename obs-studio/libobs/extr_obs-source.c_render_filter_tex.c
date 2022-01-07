
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int gs_texture_t ;
typedef int gs_technique_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int gs_draw_sprite (int *,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int * gs_effect_get_technique (int *,char const*) ;
 int gs_effect_set_texture (int *,int *) ;
 size_t gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;

__attribute__((used)) static inline void render_filter_tex(gs_texture_t *tex, gs_effect_t *effect,
         uint32_t width, uint32_t height,
         const char *tech_name)
{
 gs_technique_t *tech = gs_effect_get_technique(effect, tech_name);
 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 size_t passes, i;

 gs_effect_set_texture(image, tex);

 passes = gs_technique_begin(tech);
 for (i = 0; i < passes; i++) {
  gs_technique_begin_pass(tech, i);
  gs_draw_sprite(tex, 0, width, height);
  gs_technique_end_pass(tech);
 }
 gs_technique_end(tech);
}
