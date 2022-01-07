
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int check_fifo_magic (int *) ;
 int luaL_checknumber (int *,int) ;
 int rtc_fifo_drop_samples (int ) ;

__attribute__((used)) static int rtcfifo_drop (lua_State *L)
{
  check_fifo_magic (L);

  rtc_fifo_drop_samples (luaL_checknumber (L, 1));
  return 0;
}
