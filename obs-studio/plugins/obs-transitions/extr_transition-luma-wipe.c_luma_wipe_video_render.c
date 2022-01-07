
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luma_wipe_info {int source; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int luma_wipe_callback ;
 int obs_transition_video_render (int ,int ) ;

void luma_wipe_video_render(void *data, gs_effect_t *effect)
{
 struct luma_wipe_info *lwipe = data;
 obs_transition_video_render(lwipe->source, luma_wipe_callback);
 UNUSED_PARAMETER(effect);
}
