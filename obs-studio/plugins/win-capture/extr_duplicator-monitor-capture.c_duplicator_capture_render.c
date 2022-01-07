
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct duplicator_capture {int rot; scalar_t__ capture_cursor; scalar_t__ width; scalar_t__ height; int duplicator; } ;
typedef int gs_texture_t ;
typedef int gs_effect_t ;


 int OBS_EFFECT_DEFAULT ;
 int OBS_EFFECT_OPAQUE ;
 int RAD (float) ;
 int draw_cursor (struct duplicator_capture*) ;
 int * gs_duplicator_get_texture (int ) ;
 scalar_t__ gs_effect_loop (int *,char*) ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_rotaa4f (float,float,float,int ) ;
 int gs_matrix_translate3f (float,float,float) ;
 int * obs_get_base_effect (int ) ;
 int obs_source_draw (int *,int ,int ,int ,int ,int) ;

__attribute__((used)) static void duplicator_capture_render(void *data, gs_effect_t *effect)
{
 struct duplicator_capture *capture = data;
 gs_texture_t *texture;
 int rot;

 if (!capture->duplicator)
  return;

 texture = gs_duplicator_get_texture(capture->duplicator);
 if (!texture)
  return;

 effect = obs_get_base_effect(OBS_EFFECT_OPAQUE);

 rot = capture->rot;

 while (gs_effect_loop(effect, "Draw")) {
  if (rot != 0) {
   float x = 0.0f;
   float y = 0.0f;

   switch (rot) {
   case 90:
    x = (float)capture->height;
    break;
   case 180:
    x = (float)capture->width;
    y = (float)capture->height;
    break;
   case 270:
    y = (float)capture->width;
    break;
   }

   gs_matrix_push();
   gs_matrix_translate3f(x, y, 0.0f);
   gs_matrix_rotaa4f(0.0f, 0.0f, 1.0f, RAD((float)rot));
  }

  obs_source_draw(texture, 0, 0, 0, 0, 0);

  if (rot != 0)
   gs_matrix_pop();
 }

 if (capture->capture_cursor) {
  effect = obs_get_base_effect(OBS_EFFECT_DEFAULT);

  while (gs_effect_loop(effect, "Draw")) {
   draw_cursor(capture);
  }
 }
}
