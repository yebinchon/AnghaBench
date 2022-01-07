
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_State ;


 int lua_pushnumber (int *,int) ;
 scalar_t__ system_rtc_clock_cali_proc () ;

__attribute__((used)) static int dsleepMax( lua_State *L ) {
  lua_pushnumber(L, (uint64_t)system_rtc_clock_cali_proc()*(0x80000000-1)/(0x1000));
  return 1;
}
