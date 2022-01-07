
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 float get_video_time (int *) ;

float obs_transition_get_time(obs_source_t *transition)
{
 return get_video_time(transition);
}
