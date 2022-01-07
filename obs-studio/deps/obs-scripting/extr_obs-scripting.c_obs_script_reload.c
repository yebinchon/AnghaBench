
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int loaded; } ;
typedef TYPE_1__ obs_script_t ;


 scalar_t__ OBS_SCRIPT_LANG_LUA ;
 scalar_t__ OBS_SCRIPT_LANG_PYTHON ;
 int clear_call_queue () ;
 int obs_lua_script_load (TYPE_1__*) ;
 int obs_lua_script_unload (TYPE_1__*) ;
 int obs_python_script_load (TYPE_1__*) ;
 int obs_python_script_unload (TYPE_1__*) ;
 int ptr_valid (TYPE_1__*) ;
 int scripting_loaded ;

bool obs_script_reload(obs_script_t *script)
{
 if (!scripting_loaded)
  return 0;
 if (!ptr_valid(script))
  return 0;
out:
 return script->loaded;
}
