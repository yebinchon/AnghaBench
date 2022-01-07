
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int* transition_source_active; struct TYPE_10__** transition_sources; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_add_active_child (TYPE_1__*,TYPE_1__*) ;
 int obs_source_addref (TYPE_1__*) ;
 int obs_source_remove_active_child (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static inline obs_source_t *
copy_source_state(obs_source_t *tr_dest, obs_source_t *tr_source, size_t idx)
{
 obs_source_t *old_child = tr_dest->transition_sources[idx];
 obs_source_t *new_child = tr_source->transition_sources[idx];
 bool active = tr_source->transition_source_active[idx];

 if (old_child && tr_dest->transition_source_active[idx])
  obs_source_remove_active_child(tr_dest, old_child);

 tr_dest->transition_sources[idx] = new_child;
 tr_dest->transition_source_active[idx] = active;

 if (active && new_child)
  obs_source_add_active_child(tr_dest, new_child);
 obs_source_addref(new_child);

 return old_child;
}
