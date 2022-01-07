
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int * settings; } ;
typedef TYPE_1__ obs_script_t ;
typedef int obs_data_t ;


 scalar_t__ OBS_SCRIPT_LANG_LUA ;
 scalar_t__ OBS_SCRIPT_LANG_PYTHON ;
 int obs_data_addref (int *) ;
 int obs_lua_script_save (TYPE_1__*) ;
 int obs_python_script_save (TYPE_1__*) ;
 int ptr_valid (TYPE_1__*) ;

obs_data_t *obs_script_save(obs_script_t *script)
{
 obs_data_t *settings;

 if (!ptr_valid(script))
  return ((void*)0);
out:
 settings = script->settings;
 obs_data_addref(settings);
 return settings;
}
