
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tex; int y_render; int x_render; } ;
typedef TYPE_1__ xcb_xcursor_t ;
typedef int gs_eparam_t ;
typedef int gs_effect_t ;


 int GS_BLEND_INVSRCALPHA ;
 int GS_BLEND_SRCALPHA ;
 int gs_blend_function (int ,int ) ;
 int gs_blend_state_pop () ;
 int gs_blend_state_push () ;
 int gs_draw_sprite (int ,int ,int ,int ) ;
 int * gs_effect_get_param_by_name (int *,char*) ;
 int gs_effect_set_texture (int *,int ) ;
 int gs_enable_color (int,int,int,int) ;
 int * gs_get_effect () ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_translate3f (int ,int ,float) ;

void xcb_xcursor_render(xcb_xcursor_t *data)
{
 if (!data->tex)
  return;

 gs_effect_t *effect = gs_get_effect();
 gs_eparam_t *image = gs_effect_get_param_by_name(effect, "image");
 gs_effect_set_texture(image, data->tex);

 gs_blend_state_push();
 gs_blend_function(GS_BLEND_SRCALPHA, GS_BLEND_INVSRCALPHA);
 gs_enable_color(1, 1, 1, 0);

 gs_matrix_push();
 gs_matrix_translate3f(data->x_render, data->y_render, 0.0f);
 gs_draw_sprite(data->tex, 0, 0, 0);
 gs_matrix_pop();

 gs_enable_color(1, 1, 1, 1);
 gs_blend_state_pop();
}
