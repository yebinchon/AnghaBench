
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
struct color_source {int height; int width; int color; } ;
typedef int gs_technique_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int OBS_EFFECT_SOLID ;
 int UNUSED_PARAMETER (int *) ;
 int gs_draw_sprite (int ,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int * gs_effect_get_technique (int *,char*) ;
 int gs_effect_set_vec4 (int *,struct vec4*) ;
 int gs_technique_begin (int *) ;
 int gs_technique_begin_pass (int *,int ) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;
 int * obs_get_base_effect (int ) ;
 int vec4_from_rgba (struct vec4*,int ) ;

__attribute__((used)) static void color_source_render(void *data, gs_effect_t *effect)
{
 UNUSED_PARAMETER(effect);

 struct color_source *context = data;

 gs_effect_t *solid = obs_get_base_effect(OBS_EFFECT_SOLID);
 gs_eparam_t *color = gs_effect_get_param_by_name(solid, "color");
 gs_technique_t *tech = gs_effect_get_technique(solid, "Solid");

 struct vec4 colorVal;
 vec4_from_rgba(&colorVal, context->color);
 gs_effect_set_vec4(color, &colorVal);

 gs_technique_begin(tech);
 gs_technique_begin_pass(tech, 0);

 gs_draw_sprite(0, 0, context->width, context->height);

 gs_technique_end_pass(tech);
 gs_technique_end(tech);
}
