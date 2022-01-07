
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int * copy_source_state (int *,int *,size_t) ;
 int lock_textures (int *) ;
 int lock_transition (int *) ;
 int obs_source_release (int *) ;
 int unlock_transition (int *) ;

void obs_transition_swap_begin(obs_source_t *tr_dest, obs_source_t *tr_source)
{
 obs_source_t *old_children[2];

 if (tr_dest == tr_source)
  return;

 lock_textures(tr_source);
 lock_textures(tr_dest);

 lock_transition(tr_source);
 lock_transition(tr_dest);

 for (size_t i = 0; i < 2; i++)
  old_children[i] = copy_source_state(tr_dest, tr_source, i);

 unlock_transition(tr_dest);
 unlock_transition(tr_source);

 for (size_t i = 0; i < 2; i++)
  obs_source_release(old_children[i]);
}
