
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swipe_info {int source; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_transition_video_render (int ,int ) ;
 int swipe_callback ;

__attribute__((used)) static void swipe_video_render(void *data, gs_effect_t *effect)
{
 struct swipe_info *swipe = data;
 obs_transition_video_render(swipe->source, swipe_callback);
 UNUSED_PARAMETER(effect);
}
