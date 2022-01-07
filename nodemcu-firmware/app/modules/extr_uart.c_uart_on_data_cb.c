
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int run_input ;
 scalar_t__ uart_receive_rf ;

bool uart_on_data_cb(const char *buf, size_t len){
  if(!buf || len==0)
    return 0;
  if(uart_receive_rf == LUA_NOREF)
    return 0;
  lua_State *L = lua_getstate();
  if(!L)
    return 0;
  lua_rawgeti(L, LUA_REGISTRYINDEX, uart_receive_rf);
  lua_pushlstring(L, buf, len);
  lua_call(L, 1, 0);
  return !run_input;
}
