
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int check_fifo_magic (int *) ;
 int lua_pushnumber (int *,int ) ;
 int rtc_fifo_get_count () ;

__attribute__((used)) static int rtcfifo_count (lua_State *L)
{
  check_fifo_magic (L);

  lua_pushnumber (L, rtc_fifo_get_count ());
  return 1;
}
