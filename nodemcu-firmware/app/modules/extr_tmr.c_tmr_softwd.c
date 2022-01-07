
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int soft_watchdog ;

__attribute__((used)) static int tmr_softwd( lua_State* L ){
 soft_watchdog = luaL_checkinteger(L, 1);
 return 0;
}
