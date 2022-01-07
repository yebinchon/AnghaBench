
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * settings; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ obs_output_t ;
typedef int obs_data_t ;


 int obs_data_addref (int *) ;
 int obs_output_valid (TYPE_2__ const*,char*) ;

obs_data_t *obs_output_get_settings(const obs_output_t *output)
{
 if (!obs_output_valid(output, "obs_output_get_settings"))
  return ((void*)0);

 obs_data_addref(output->context.settings);
 return output->context.settings;
}
