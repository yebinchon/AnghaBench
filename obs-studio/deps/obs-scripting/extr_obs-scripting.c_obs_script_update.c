
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ obs_script_t ;
typedef int obs_data_t ;


 scalar_t__ OBS_SCRIPT_LANG_LUA ;
 scalar_t__ OBS_SCRIPT_LANG_PYTHON ;
 int obs_lua_script_update (TYPE_1__*,int *) ;
 int obs_python_script_update (TYPE_1__*,int *) ;
 int ptr_valid (TYPE_1__*) ;

void obs_script_update(obs_script_t *script, obs_data_t *settings)
{
 if (!ptr_valid(script))
  return;
}
