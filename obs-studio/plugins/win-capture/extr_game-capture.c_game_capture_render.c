
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cursor; scalar_t__ allow_transparency; } ;
struct game_capture {int cursor_hidden; TYPE_2__ config; TYPE_1__* global_hook_info; int texture; int active; } ;
typedef int gs_effect_t ;
struct TYPE_3__ {int flip; } ;


 int OBS_EFFECT_DEFAULT ;
 int OBS_EFFECT_OPAQUE ;
 int game_capture_render_cursor (struct game_capture*) ;
 scalar_t__ gs_effect_loop (int *,char*) ;
 int * obs_get_base_effect (int ) ;
 int obs_source_draw (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void game_capture_render(void *data, gs_effect_t *effect)
{
 struct game_capture *gc = data;
 if (!gc->texture || !gc->active)
  return;

 effect = obs_get_base_effect(gc->config.allow_transparency
          ? OBS_EFFECT_DEFAULT
          : OBS_EFFECT_OPAQUE);

 while (gs_effect_loop(effect, "Draw")) {
  obs_source_draw(gc->texture, 0, 0, 0, 0,
    gc->global_hook_info->flip);

  if (gc->config.allow_transparency && gc->config.cursor &&
      !gc->cursor_hidden) {
   game_capture_render_cursor(gc);
  }
 }

 if (!gc->config.allow_transparency && gc->config.cursor &&
     !gc->cursor_hidden) {
  effect = obs_get_base_effect(OBS_EFFECT_DEFAULT);

  while (gs_effect_loop(effect, "Draw")) {
   game_capture_render_cursor(gc);
  }
 }
}
