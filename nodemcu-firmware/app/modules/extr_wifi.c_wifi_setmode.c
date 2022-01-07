
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int LUA_TBOOLEAN ;
 unsigned int NULL_MODE ;
 unsigned int SOFTAP_MODE ;
 unsigned int STATIONAP_MODE ;
 unsigned int STATION_MODE ;
 int luaL_argcheck (int *,int,int,char*) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int luaL_typerror (int *,int,int ) ;
 int lua_isboolean (int *,int) ;
 int lua_isnoneornil (int *,int) ;
 int lua_pushinteger (int *,unsigned int) ;
 int lua_toboolean (int *,int) ;
 int lua_typename (int *,int ) ;
 scalar_t__ wifi_get_opmode () ;
 int wifi_set_opmode (int ) ;
 int wifi_set_opmode_current (int ) ;

__attribute__((used)) static int wifi_setmode( lua_State* L )
{
  unsigned mode;
  bool save_to_flash=1;
  mode = luaL_checkinteger( L, 1 );
  luaL_argcheck(L, mode == STATION_MODE || mode == SOFTAP_MODE || mode == STATIONAP_MODE || mode == NULL_MODE, 1, "Invalid mode");

  if(!lua_isnoneornil(L, 2))
  {
    if(!lua_isboolean(L, 2))
    {
      luaL_typerror(L, 2, lua_typename(L, LUA_TBOOLEAN));
    }
    save_to_flash=lua_toboolean(L, 2);
  }

  if(save_to_flash)
  {
    wifi_set_opmode( (uint8_t)mode);
  }
  else
  {
    wifi_set_opmode_current( (uint8_t)mode);
  }

  mode = (unsigned)wifi_get_opmode();
  lua_pushinteger( L, mode );
  return 1;
}
