
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* transition_source_active; scalar_t__* transition_sources; } ;
typedef TYPE_1__ obs_source_t ;


 int lock_transition (TYPE_1__*) ;
 int obs_source_add_active_child (TYPE_1__*,scalar_t__) ;
 int unlock_transition (TYPE_1__*) ;

__attribute__((used)) static inline bool activate_child(obs_source_t *transition, size_t idx)
{
 bool success = 1;

 lock_transition(transition);

 if (transition->transition_sources[idx] &&
     !transition->transition_source_active[idx]) {

  success = obs_source_add_active_child(
   transition, transition->transition_sources[idx]);
  if (success)
   transition->transition_source_active[idx] = 1;
 }

 unlock_transition(transition);

 return success;
}
