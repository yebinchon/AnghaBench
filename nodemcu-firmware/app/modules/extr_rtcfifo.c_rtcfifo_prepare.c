
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef int lua_State ;


 void* RTC_DEFAULT_TAGCOUNT ;
 int luaL_error (int *,char*) ;
 int lua_getfield (int *,int,char*) ;
 int lua_isnone (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 void* lua_tonumber (int *,int) ;
 int rtc_fifo_prepare (int ,void*,void*) ;
 int rtc_fifo_put_loc (int,int,void*) ;

__attribute__((used)) static int rtcfifo_prepare (lua_State *L)
{
  uint32_t sensor_count = RTC_DEFAULT_TAGCOUNT;
  uint32_t interval_us = 0;
  int first = -1, last = -1;

  if (lua_istable (L, 1))
  {







    lua_getfield (L, 1, "sensor_count");
    if (lua_isnumber (L, -1))
      sensor_count = lua_tonumber (L, -1);
    lua_pop (L, 1);

    lua_getfield (L, 1, "storage_begin");
    if (lua_isnumber (L, -1))
      first = lua_tonumber (L, -1);
    lua_pop (L, 1);
    lua_getfield (L, 1, "storage_end");
    if (lua_isnumber (L, -1))
      last = lua_tonumber (L, -1);
    lua_pop (L, 1);
  }
  else if (!lua_isnone (L, 1))
    return luaL_error (L, "expected table as arg #1");

  rtc_fifo_prepare (0, interval_us, sensor_count);

  if (first != -1 && last != -1)
    rtc_fifo_put_loc (first, last, sensor_count);

  return 0;
}
