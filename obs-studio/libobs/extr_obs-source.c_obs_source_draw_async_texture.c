
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_source {int dummy; } ;
typedef int gs_technique_t ;
typedef int gs_effect_t ;


 int OBS_EFFECT_DEFAULT ;
 int * gs_effect_get_technique (int *,char*) ;
 int * gs_get_effect () ;
 int gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,int ) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 int * obs_get_base_effect (int ) ;
 int obs_source_draw_texture (struct obs_source*,int *) ;

__attribute__((used)) static void obs_source_draw_async_texture(struct obs_source *source)
{
 gs_effect_t *effect = gs_get_effect();
 bool def_draw = (!effect);
 gs_technique_t *tech = ((void*)0);

 if (def_draw) {
  effect = obs_get_base_effect(OBS_EFFECT_DEFAULT);
  tech = gs_effect_get_technique(effect, "Draw");
  gs_technique_begin(tech);
  gs_technique_begin_pass(tech, 0);
 }

 obs_source_draw_texture(source, effect);

 if (def_draw) {
  gs_technique_end_pass(tech);
  gs_technique_end(tech);
 }
}
