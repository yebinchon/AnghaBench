
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cut_info {int source; } ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int obs_transition_video_render (int ,int *) ;

__attribute__((used)) static void cut_video_render(void *data, gs_effect_t *effect)
{
 struct cut_info *cut = data;
 obs_transition_video_render(cut->source, ((void*)0));
 UNUSED_PARAMETER(effect);
}
