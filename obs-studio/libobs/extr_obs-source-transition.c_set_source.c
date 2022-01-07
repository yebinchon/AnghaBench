
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int* transition_source_active; scalar_t__ transition_cx; scalar_t__ transition_cy; struct TYPE_18__** transition_sources; } ;
typedef TYPE_1__ obs_source_t ;
typedef enum obs_transition_target { ____Placeholder_obs_transition_target } obs_transition_target ;


 int lock_transition (TYPE_1__*) ;
 int obs_source_add_active_child (TYPE_1__*,TYPE_1__*) ;
 int obs_source_addref (TYPE_1__*) ;
 int obs_source_release (TYPE_1__*) ;
 int obs_source_remove_active_child (TYPE_1__*,TYPE_1__*) ;
 int recalculate_transition_matrices (TYPE_1__*) ;
 int recalculate_transition_size (TYPE_1__*) ;
 int unlock_transition (TYPE_1__*) ;

__attribute__((used)) static void
set_source(obs_source_t *transition, enum obs_transition_target target,
    obs_source_t *new_child,
    bool (*callback)(obs_source_t *t, size_t idx, obs_source_t *c))
{
 size_t idx = (size_t)target;
 obs_source_t *old_child;
 bool add_success = 1;
 bool already_active;

 if (new_child)
  obs_source_addref(new_child);

 lock_transition(transition);

 old_child = transition->transition_sources[idx];

 if (new_child == old_child) {
  unlock_transition(transition);
  obs_source_release(new_child);
  return;
 }

 already_active = transition->transition_source_active[idx];

 if (already_active) {
  if (new_child)
   add_success = obs_source_add_active_child(transition,
          new_child);
  if (old_child && add_success)
   obs_source_remove_active_child(transition, old_child);
 }

 if (callback && add_success)
  add_success = callback(transition, idx, new_child);

 transition->transition_sources[idx] = add_success ? new_child : ((void*)0);

 unlock_transition(transition);

 if (add_success) {
  if (transition->transition_cx == 0 ||
      transition->transition_cy == 0) {
   recalculate_transition_size(transition);
   recalculate_transition_matrices(transition);
  }
 } else {
  obs_source_release(new_child);
 }

 obs_source_release(old_child);
}
