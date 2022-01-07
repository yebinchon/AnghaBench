
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnumber (int *,int ) ;
 int rtc_fifo_check_magic () ;

__attribute__((used)) static int rtcfifo_ready (lua_State *L)
{
  lua_pushnumber (L, rtc_fifo_check_magic ());
  return 1;
}
