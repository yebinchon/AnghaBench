
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stinger_info {float transition_point; int media_source; int source; } ;
typedef int gs_effect_t ;
typedef enum obs_transition_target { ____Placeholder_obs_transition_target } obs_transition_target ;


 int OBS_TRANSITION_SOURCE_A ;
 int OBS_TRANSITION_SOURCE_B ;
 int UNUSED_PARAMETER (int *) ;
 int gs_matrix_pop () ;
 int gs_matrix_push () ;
 int gs_matrix_scale3f (float,float,float) ;
 scalar_t__ obs_source_get_height (int ) ;
 scalar_t__ obs_source_get_width (int ) ;
 int obs_source_video_render (int ) ;
 float obs_transition_get_time (int ) ;
 int obs_transition_video_render_direct (int ,int) ;

__attribute__((used)) static void stinger_video_render(void *data, gs_effect_t *effect)
{
 struct stinger_info *s = data;

 float t = obs_transition_get_time(s->source);
 bool use_a = t < s->transition_point;

 enum obs_transition_target target = use_a ? OBS_TRANSITION_SOURCE_A
        : OBS_TRANSITION_SOURCE_B;

 if (!obs_transition_video_render_direct(s->source, target))
  return;



 float source_cx = (float)obs_source_get_width(s->source);
 float source_cy = (float)obs_source_get_height(s->source);
 uint32_t media_cx = obs_source_get_width(s->media_source);
 uint32_t media_cy = obs_source_get_height(s->media_source);

 if (!media_cx || !media_cy)
  return;

 float scale_x = source_cx / (float)media_cx;
 float scale_y = source_cy / (float)media_cy;

 gs_matrix_push();
 gs_matrix_scale3f(scale_x, scale_y, 1.0f);
 obs_source_video_render(s->media_source);
 gs_matrix_pop();

 UNUSED_PARAMETER(effect);
}
