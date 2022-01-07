
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int RTC_USER_MEM_NUM_DWORDS ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checknumber (int *,int) ;
 int lua_gettop (int *) ;
 int lua_tonumber (int *,int ) ;
 int rtc_mem_write (int ,int ) ;

__attribute__((used)) static int rtcmem_write32 (lua_State *L)
{
  int idx = luaL_checknumber (L, 1);
  int n = lua_gettop (L) - 1;
  luaL_argcheck (
    L, idx + n <= RTC_USER_MEM_NUM_DWORDS, 1, "RTC mem would overrun");
  int src = 2;
  while (n-- > 0)
  {
    rtc_mem_write (idx++, lua_tonumber (L, src++));
  }
  return 0;
}
