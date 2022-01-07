
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t mixer_mask; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_output_valid (TYPE_1__*,char*) ;

void obs_output_set_mixers(obs_output_t *output, size_t mixers)
{
 if (!obs_output_valid(output, "obs_output_set_mixers"))
  return;

 output->mixer_mask = mixers;
}
