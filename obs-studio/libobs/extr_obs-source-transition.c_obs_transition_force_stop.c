
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int handle_stop (int *) ;

void obs_transition_force_stop(obs_source_t *transition)
{
 handle_stop(transition);
}
