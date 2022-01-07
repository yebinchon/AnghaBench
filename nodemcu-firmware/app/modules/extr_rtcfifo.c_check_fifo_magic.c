
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int rtc_fifo_check_magic () ;

__attribute__((used)) static void check_fifo_magic (lua_State *L)
{
  if (!rtc_fifo_check_magic ())
    luaL_error (L, "rtcfifo not prepared!");
}
