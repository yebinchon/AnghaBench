
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t mixer_mask; } ;
typedef TYPE_1__ obs_output_t ;


 int active (TYPE_1__*) ;
 int obs_output_valid (TYPE_1__*,char*) ;

void obs_output_set_mixer(obs_output_t *output, size_t mixer_idx)
{
 if (!obs_output_valid(output, "obs_output_set_mixer"))
  return;

 if (!active(output))
  output->mixer_mask = (size_t)1 << mixer_idx;
}
