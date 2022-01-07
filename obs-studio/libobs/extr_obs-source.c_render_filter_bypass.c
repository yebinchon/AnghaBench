
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;
typedef int gs_technique_t ;
typedef int gs_effect_t ;


 int * gs_effect_get_technique (int *,char const*) ;
 size_t gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 int obs_source_video_render (int *) ;

__attribute__((used)) static inline void render_filter_bypass(obs_source_t *target,
     gs_effect_t *effect,
     const char *tech_name)
{
 gs_technique_t *tech = gs_effect_get_technique(effect, tech_name);
 size_t passes, i;

 passes = gs_technique_begin(tech);
 for (i = 0; i < passes; i++) {
  gs_technique_begin_pass(tech, i);
  obs_source_video_render(target);
  gs_technique_end_pass(tech);
 }
 gs_technique_end(tech);
}
