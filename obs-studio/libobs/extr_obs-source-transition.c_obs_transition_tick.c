
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * transition_texrender; } ;
typedef TYPE_1__ obs_source_t ;


 int gs_texrender_reset (int ) ;
 int recalculate_transition_matrices (TYPE_1__*) ;
 int recalculate_transition_size (TYPE_1__*) ;
 scalar_t__ trylock_textures (TYPE_1__*) ;
 int unlock_textures (TYPE_1__*) ;

void obs_transition_tick(obs_source_t *transition)
{
 recalculate_transition_size(transition);
 recalculate_transition_matrices(transition);

 if (trylock_textures(transition) == 0) {
  gs_texrender_reset(transition->transition_texrender[0]);
  gs_texrender_reset(transition->transition_texrender[1]);
  unlock_textures(transition);
 }
}
