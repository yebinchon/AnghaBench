
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ obs_script_t ;
typedef int obs_properties_t ;


 scalar_t__ OBS_SCRIPT_LANG_LUA ;
 scalar_t__ OBS_SCRIPT_LANG_PYTHON ;
 int * obs_lua_script_get_properties (TYPE_1__*) ;
 int * obs_properties_create () ;
 int * obs_python_script_get_properties (TYPE_1__*) ;
 int ptr_valid (TYPE_1__*) ;

obs_properties_t *obs_script_get_properties(obs_script_t *script)
{
 obs_properties_t *props = ((void*)0);

 if (!ptr_valid(script))
  return ((void*)0);
out:
 if (!props)
  props = obs_properties_create();
 return props;
}
