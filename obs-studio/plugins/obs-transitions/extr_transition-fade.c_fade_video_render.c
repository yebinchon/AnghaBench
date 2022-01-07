
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fade_info {int source; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int fade_callback ;
 int obs_transition_video_render (int ,int ) ;

__attribute__((used)) static void fade_video_render(void *data, gs_effect_t *effect)
{
 struct fade_info *fade = data;
 obs_transition_video_render(fade->source, fade_callback);
 UNUSED_PARAMETER(effect);
}
