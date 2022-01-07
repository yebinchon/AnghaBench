
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int control; } ;
typedef TYPE_1__ obs_output_t ;


 TYPE_1__* obs_weak_output_get_output (int ) ;

obs_output_t *obs_output_get_ref(obs_output_t *output)
{
 if (!output)
  return ((void*)0);

 return obs_weak_output_get_output(output->control);
}
