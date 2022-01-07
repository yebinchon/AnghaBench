
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ obs_script_t ;


 scalar_t__ OBS_SCRIPT_LANG_LUA ;
 scalar_t__ OBS_SCRIPT_LANG_PYTHON ;
 int obs_lua_script_destroy (TYPE_1__*) ;
 int obs_lua_script_unload (TYPE_1__*) ;
 int obs_python_script_destroy (TYPE_1__*) ;
 int obs_python_script_unload (TYPE_1__*) ;

void obs_script_destroy(obs_script_t *script)
{
 if (!script)
  return;
}
