
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fade_to_color_info {int source; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int fade_to_color_callback ;
 int obs_transition_video_render (int ,int ) ;

__attribute__((used)) static void fade_to_color_video_render(void *data, gs_effect_t *effect)
{
 struct fade_to_color_info *fade_to_color = data;
 obs_transition_video_render(fade_to_color->source,
        fade_to_color_callback);
 UNUSED_PARAMETER(effect);
}
