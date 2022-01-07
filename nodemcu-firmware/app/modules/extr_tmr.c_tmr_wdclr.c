
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int system_soft_wdt_feed () ;

__attribute__((used)) static int tmr_wdclr( lua_State* L ){
 system_soft_wdt_feed ();

 return 0;
}
