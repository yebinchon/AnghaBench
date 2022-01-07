
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint64 ;
typedef int lua_State ;


 scalar_t__ luaL_checknumber (int *,int) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_tointeger (int *,int) ;
 int system_deep_sleep (scalar_t__) ;
 int system_deep_sleep_instant (scalar_t__) ;
 int system_deep_sleep_set_option (int) ;

__attribute__((used)) static int node_deepsleep( lua_State* L )
{
  uint64 us;
  uint8 option;


  if ( lua_isnumber(L, 2) )
  {
    option = lua_tointeger(L, 2);
    if ( option < 0 || option > 4)
      return luaL_error( L, "wrong arg range" );
    else
      system_deep_sleep_set_option( option );
  }
  bool instant = 0;
  if (lua_isnumber(L, 3))
    instant = lua_tointeger(L, 3);

  if ( lua_isnumber(L, 1) )
  {
    us = luaL_checknumber(L, 1);

    if ( us < 0 )
      return luaL_error( L, "wrong arg range" );
    else
    {
      if (instant)
        system_deep_sleep_instant(us);
      else
        system_deep_sleep( us );
    }
  }
  return 0;
}
