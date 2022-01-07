
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__** transition_sources; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_transition_target { ____Placeholder_obs_transition_target } obs_transition_target ;


 int lock_transition (TYPE_1__*) ;
 int obs_source_addref (TYPE_1__*) ;
 int transition_valid (TYPE_1__*,char*) ;
 int unlock_transition (TYPE_1__*) ;

obs_source_t *obs_transition_get_source(obs_source_t *transition,
     enum obs_transition_target target)
{
 size_t idx = (size_t)target;
 obs_source_t *ret;

 if (!transition_valid(transition, "obs_transition_get_source"))
  return ((void*)0);

 lock_transition(transition);
 ret = transition->transition_sources[idx];
 obs_source_addref(ret);
 unlock_transition(transition);

 return ret;
}
