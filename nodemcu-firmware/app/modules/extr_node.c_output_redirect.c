
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 scalar_t__ output_redir_ref ;
 scalar_t__ serial_debug ;
 int uart0_sendStr (char const*) ;

void output_redirect(const char *str) {
  lua_State *L = lua_getstate();





  if (output_redir_ref == LUA_NOREF) {
    uart0_sendStr(str);
    return;
  }

  if (serial_debug != 0) {
    uart0_sendStr(str);
  }

  lua_rawgeti(L, LUA_REGISTRYINDEX, output_redir_ref);
  lua_pushstring(L, str);
  lua_call(L, 1, 0);
}
