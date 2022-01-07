
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* transition_sources; } ;
typedef TYPE_1__ obs_source_t ;
typedef int (* obs_source_enum_proc_t ) (TYPE_1__*,scalar_t__,void*) ;


 int lock_transition (TYPE_1__*) ;
 int unlock_transition (TYPE_1__*) ;

void obs_transition_enum_sources(obs_source_t *transition,
     obs_source_enum_proc_t cb, void *param)
{
 lock_transition(transition);
 for (size_t i = 0; i < 2; i++) {
  if (transition->transition_sources[i])
   cb(transition, transition->transition_sources[i],
      param);
 }
 unlock_transition(transition);
}
