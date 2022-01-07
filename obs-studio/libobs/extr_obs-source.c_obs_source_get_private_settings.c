
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * private_settings; } ;
typedef TYPE_1__ obs_source_t ;
typedef int obs_data_t ;


 int obs_data_addref (int *) ;
 int obs_ptr_valid (TYPE_1__*,char*) ;

obs_data_t *obs_source_get_private_settings(obs_source_t *source)
{
 if (!obs_ptr_valid(source, "obs_source_get_private_settings"))
  return ((void*)0);

 obs_data_addref(source->private_settings);
 return source->private_settings;
}
