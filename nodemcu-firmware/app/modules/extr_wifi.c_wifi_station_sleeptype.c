
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 unsigned int LIGHT_SLEEP_T ;
 unsigned int MODEM_SLEEP_T ;
 unsigned int NONE_SLEEP_T ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,unsigned int) ;
 int lua_pushnil (int *) ;
 unsigned int lua_tointeger (int *,int) ;
 unsigned int wifi_get_sleep_type () ;
 int wifi_set_sleep_type (unsigned int) ;

__attribute__((used)) static int wifi_station_sleeptype( lua_State* L )
{
  unsigned type;

  if ( lua_isnumber(L, 1) )
  {
    type = lua_tointeger(L, 1);
    luaL_argcheck(L, (type == NONE_SLEEP_T || type == LIGHT_SLEEP_T || type == MODEM_SLEEP_T), 1, "range:0-2");
    if(!wifi_set_sleep_type(type)){
      lua_pushnil(L);
      return 1;
    }
  }

  type = wifi_get_sleep_type();
  lua_pushinteger( L, type );
  return 1;
}
