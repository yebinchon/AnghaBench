
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slideshow {int dummy; } ;
typedef int obs_source_t ;
typedef int gs_effect_t ;


 int UNUSED_PARAMETER (int *) ;
 int * get_transition (struct slideshow*) ;
 int obs_source_release (int *) ;
 int obs_source_video_render (int *) ;

__attribute__((used)) static void ss_video_render(void *data, gs_effect_t *effect)
{
 struct slideshow *ss = data;
 obs_source_t *transition = get_transition(ss);

 if (transition) {
  obs_source_video_render(transition);
  obs_source_release(transition);
 }

 UNUSED_PARAMETER(effect);
}
