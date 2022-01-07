
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int NODE_DBG (char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_put_line (char const*,size_t) ;
 int user_process_input (int) ;

__attribute__((used)) static int node_input( lua_State* L ) {
  size_t l = 0;
  const char *s = luaL_checklstring(L, 1, &l);
  if (lua_put_line(s, l)) {
    NODE_DBG("Result (if any):\n");
    user_process_input(1);
  }
  return 0;
}
