
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ** transition_texrender; } ;
typedef TYPE_1__ obs_source_t ;
typedef int gs_texrender_t ;


 int obs_transition_clear (TYPE_1__*) ;
 int unlock_textures (TYPE_1__*) ;

void obs_transition_swap_end(obs_source_t *tr_dest, obs_source_t *tr_source)
{
 if (tr_dest == tr_source)
  return;

 obs_transition_clear(tr_source);

 for (size_t i = 0; i < 2; i++) {
  gs_texrender_t *dest = tr_dest->transition_texrender[i];
  gs_texrender_t *source = tr_source->transition_texrender[i];

  tr_dest->transition_texrender[i] = source;
  tr_source->transition_texrender[i] = dest;
 }

 unlock_textures(tr_dest);
 unlock_textures(tr_source);
}
