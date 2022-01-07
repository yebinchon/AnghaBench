
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tmr_t ;
typedef int lua_State ;


 int luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;

__attribute__((used)) static tmr_t tmr_get( lua_State *L, int stack ) {
 tmr_t t = (tmr_t)luaL_checkudata(L, stack, "tmr.timer");
 if (t == ((void*)0))
  return (tmr_t)luaL_error(L, "timer object expected");
 return t;
}
