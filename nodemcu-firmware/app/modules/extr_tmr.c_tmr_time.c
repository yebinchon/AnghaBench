
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 int rtc_timer_update (int) ;

__attribute__((used)) static int tmr_time( lua_State* L ){
 uint64_t us=rtc_timer_update(0);
 lua_pushinteger(L, us/1000000);
 return 1;
}
