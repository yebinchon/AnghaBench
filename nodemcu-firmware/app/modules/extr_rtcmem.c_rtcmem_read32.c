
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int RTC_USER_MEM_NUM_DWORDS ;
 int luaL_checknumber (int *,int) ;
 int lua_checkstack (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_tonumber (int *,int) ;
 int rtc_mem_read (int ) ;

__attribute__((used)) static int rtcmem_read32 (lua_State *L)
{
  int idx = luaL_checknumber (L, 1);
  int n = 1;
  if (lua_isnumber (L, 2))
    n = lua_tonumber (L, 2);

  if (!lua_checkstack (L, n))
    return 0;

  int ret = 0;
  while (n > 0 && idx >= 0 && idx < RTC_USER_MEM_NUM_DWORDS)
  {
    lua_pushinteger (L, rtc_mem_read (idx++));
    --n;
    ++ret;
  }
  return ret;
}
