
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_param_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int LUA_TFUNCTION ;
 int LUA_TLIGHTFUNCTION ;
 int LUA_TNUMBER ;
 unsigned int TASK_PRIORITY_HIGH ;
 unsigned int TASK_PRIORITY_MEDIUM ;
 int do_node_task ;
 scalar_t__ do_node_task_handle ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkint (int *,int) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_type (int *,int) ;
 scalar_t__ task_get_id (int ) ;
 int task_post (unsigned int,scalar_t__,int ) ;

__attribute__((used)) static int node_task_post( lua_State* L )
{
  int n = 1, Ltype = lua_type(L, 1);
  unsigned priority = TASK_PRIORITY_MEDIUM;
  if (Ltype == LUA_TNUMBER) {
    priority = (unsigned) luaL_checkint(L, 1);
    luaL_argcheck(L, priority <= TASK_PRIORITY_HIGH, 1, "invalid  priority");
    Ltype = lua_type(L, ++n);
  }
  luaL_argcheck(L, Ltype == LUA_TFUNCTION || Ltype == LUA_TLIGHTFUNCTION, n, "invalid function");
  lua_pushvalue(L, n);

  int task_fn_ref = luaL_ref(L, LUA_REGISTRYINDEX);

  if (!do_node_task_handle)
    do_node_task_handle = task_get_id(do_node_task);

  if(!task_post(priority, do_node_task_handle, (task_param_t)task_fn_ref)) {
    luaL_unref(L, LUA_REGISTRYINDEX, task_fn_ref);
    luaL_error(L, "Task queue overflow. Task not posted");
  }
  return 0;
}
