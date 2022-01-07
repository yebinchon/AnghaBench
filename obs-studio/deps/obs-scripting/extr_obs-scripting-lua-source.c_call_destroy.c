
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {int script; } ;
struct obs_lua_data {int lua_data_ref; struct obs_lua_source* ls; } ;


 int LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int call_func (int ,int,int ) ;
 int destroy ;
 int ls_push_data () ;
 int luaL_unref (int ,int ,int ) ;

__attribute__((used)) static void call_destroy(struct obs_lua_data *ld)
{
 struct obs_lua_source *ls = ld->ls;

 ls_push_data();
 call_func(destroy, 1, 0);
 luaL_unref(ls->script, LUA_REGISTRYINDEX, ld->lua_data_ref);
 ld->lua_data_ref = LUA_REFNIL;
}
