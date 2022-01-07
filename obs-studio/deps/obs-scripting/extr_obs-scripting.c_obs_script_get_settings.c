
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * settings; } ;
typedef TYPE_1__ obs_script_t ;
typedef int obs_data_t ;


 int obs_data_addref (int *) ;
 int ptr_valid (TYPE_1__*) ;

obs_data_t *obs_script_get_settings(obs_script_t *script)
{
 obs_data_t *settings;

 if (!ptr_valid(script))
  return ((void*)0);

 settings = script->settings;
 obs_data_addref(settings);
 return settings;
}
