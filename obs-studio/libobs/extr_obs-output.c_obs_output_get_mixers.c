
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t mixer_mask; } ;
typedef TYPE_1__ obs_output_t ;


 scalar_t__ obs_output_valid (TYPE_1__ const*,char*) ;

size_t obs_output_get_mixers(const obs_output_t *output)
{
 return obs_output_valid(output, "obs_output_get_mixers")
         ? output->mixer_mask
         : 0;
}
