
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int* transition_source_active; int transitioning_video; int transitioning_audio; struct TYPE_13__** transition_sources; } ;
typedef TYPE_1__ obs_source_t ;


 int lock_transition (TYPE_1__*) ;
 int obs_source_add_active_child (TYPE_1__*,TYPE_1__*) ;
 int obs_source_addref (TYPE_1__*) ;
 int obs_source_release (TYPE_1__*) ;
 int obs_source_remove_active_child (TYPE_1__*,TYPE_1__*) ;
 int transition_valid (TYPE_1__*,char*) ;
 int unlock_transition (TYPE_1__*) ;

void obs_transition_set(obs_source_t *transition, obs_source_t *source)
{
 obs_source_t *s[2];
 bool active[2];

 if (!transition_valid(transition, "obs_transition_clear"))
  return;

 obs_source_addref(source);

 lock_transition(transition);
 for (size_t i = 0; i < 2; i++) {
  s[i] = transition->transition_sources[i];
  active[i] = transition->transition_source_active[i];
  transition->transition_sources[i] = ((void*)0);
  transition->transition_source_active[i] = 0;
 }
 transition->transition_source_active[0] = 1;
 transition->transition_sources[0] = source;
 transition->transitioning_video = 0;
 transition->transitioning_audio = 0;
 unlock_transition(transition);

 for (size_t i = 0; i < 2; i++) {
  if (s[i] && active[i])
   obs_source_remove_active_child(transition, s[i]);
  obs_source_release(s[i]);
 }

 if (source)
  obs_source_add_active_child(transition, source);
}
