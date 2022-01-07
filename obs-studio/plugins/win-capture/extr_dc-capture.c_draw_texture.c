
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_capture {scalar_t__ compatibility; int * texture; } ;
typedef int gs_texture_t ;
typedef int gs_technique_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_FLIP_V ;
 int gs_draw_sprite (int *,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int * gs_effect_get_technique (int *,char*) ;
 int gs_effect_set_texture (int *,int *) ;
 size_t gs_technique_begin (int *) ;
 scalar_t__ gs_technique_begin_pass (int *,size_t) ;
 int gs_technique_end (int *) ;
 int gs_technique_end_pass (int *) ;

__attribute__((used)) static void draw_texture(struct dc_capture *capture, gs_effect_t *effect)
{
 gs_texture_t *texture = capture->texture;
 gs_technique_t *tech = gs_effect_get_technique(effect, "Draw");
 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 size_t passes;

 gs_effect_set_texture(image, texture);

 passes = gs_technique_begin(tech);
 for (size_t i = 0; i < passes; i++) {
  if (gs_technique_begin_pass(tech, i)) {
   if (capture->compatibility)
    gs_draw_sprite(texture, GS_FLIP_V, 0, 0);
   else
    gs_draw_sprite(texture, 0, 0, 0);

   gs_technique_end_pass(tech);
  }
 }
 gs_technique_end(tech);
}
