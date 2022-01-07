
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sint32_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int os_delay_us (int) ;
 int system_soft_wdt_feed () ;

__attribute__((used)) static int tmr_delay( lua_State* L ){
 sint32_t us = luaL_checkinteger(L, 1);
 if(us <= 0)
  return luaL_error(L, "wrong arg range");
 while(us >= 1000000){
  us -= 1000000;
  os_delay_us(1000000);
  system_soft_wdt_feed ();
 }
 if(us>0){
  os_delay_us(us);
  system_soft_wdt_feed ();
 }
 return 0;
}
