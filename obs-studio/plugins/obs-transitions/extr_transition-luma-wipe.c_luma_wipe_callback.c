
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * texture; } ;
struct luma_wipe_info {float softness; int effect; int ep_softness; int invert_luma; int ep_invert; int ep_progress; TYPE_1__ luma_image; int ep_l_tex; int ep_b_tex; int ep_a_tex; } ;
typedef int gs_texture_t ;


 int gs_draw_sprite (int *,int ,int ,int ) ;
 scalar_t__ gs_effect_loop (int ,char*) ;
 int gs_effect_set_bool (int ,int ) ;
 int gs_effect_set_float (int ,float) ;
 int gs_effect_set_texture (int ,int *) ;

__attribute__((used)) static void luma_wipe_callback(void *data, gs_texture_t *a, gs_texture_t *b,
          float t, uint32_t cx, uint32_t cy)
{
 struct luma_wipe_info *lwipe = data;

 gs_effect_set_texture(lwipe->ep_a_tex, a);
 gs_effect_set_texture(lwipe->ep_b_tex, b);
 gs_effect_set_texture(lwipe->ep_l_tex, lwipe->luma_image.texture);
 gs_effect_set_float(lwipe->ep_progress, t);

 gs_effect_set_bool(lwipe->ep_invert, lwipe->invert_luma);
 gs_effect_set_float(lwipe->ep_softness, lwipe->softness);

 while (gs_effect_loop(lwipe->effect, "LumaWipe"))
  gs_draw_sprite(((void*)0), 0, cx, cy);
}
