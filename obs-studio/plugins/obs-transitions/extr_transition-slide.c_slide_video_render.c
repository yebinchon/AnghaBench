
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slide_info {int source; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_transition_video_render (int ,int ) ;
 int slide_callback ;

void slide_video_render(void *data, gs_effect_t *effect)
{
 struct slide_info *slide = data;
 obs_transition_video_render(slide->source, slide_callback);
 UNUSED_PARAMETER(effect);
}
