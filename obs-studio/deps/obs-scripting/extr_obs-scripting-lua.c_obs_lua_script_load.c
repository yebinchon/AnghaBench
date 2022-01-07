
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loaded; } ;
struct obs_lua_script {TYPE_1__ base; } ;
typedef int obs_script_t ;


 int load_lua_script (struct obs_lua_script*) ;
 int obs_lua_script_update (int *,int *) ;

bool obs_lua_script_load(obs_script_t *s)
{
 struct obs_lua_script *data = (struct obs_lua_script *)s;
 if (!data->base.loaded) {
  data->base.loaded = load_lua_script(data);
  if (data->base.loaded)
   obs_lua_script_update(s, ((void*)0));
 }

 return data->base.loaded;
}
