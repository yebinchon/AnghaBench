
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transition_scale_type; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_transition_scale_type { ____Placeholder_obs_transition_scale_type } obs_transition_scale_type ;


 int transition_valid (TYPE_1__*,char*) ;

void obs_transition_set_scale_type(obs_source_t *transition,
       enum obs_transition_scale_type type)
{
 if (!transition_valid(transition, "obs_transition_set_scale_type"))
  return;

 transition->transition_scale_type = type;
}
