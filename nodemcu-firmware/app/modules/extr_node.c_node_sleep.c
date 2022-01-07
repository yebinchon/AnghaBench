
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dbg_printf (char*) ;
 int luaL_error (int *,char*) ;

__attribute__((used)) static int node_sleep( lua_State* L )
{
  dbg_printf("\n The options \"TIMER_SUSPEND_ENABLE\" and \"PMSLEEP_ENABLE\" in \"app/include/user_config.h\" were disabled during FW build!\n");
  return luaL_error(L, "node.sleep() is unavailable");
}
