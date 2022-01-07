
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* transition_source_active; int transitioning_video; int transitioning_audio; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_add_active_child (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static bool activate_transition(obs_source_t *transition, size_t idx,
    obs_source_t *child)
{
 if (!transition->transition_source_active[idx]) {
  if (!obs_source_add_active_child(transition, child))
   return 0;

  transition->transition_source_active[idx] = 1;
 }

 transition->transitioning_video = 1;
 transition->transitioning_audio = 1;
 return 1;
}
