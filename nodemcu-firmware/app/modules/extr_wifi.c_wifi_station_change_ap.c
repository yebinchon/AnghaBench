
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int lua_State ;


 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int wifi_station_ap_change (int) ;

__attribute__((used)) static int wifi_station_change_ap( lua_State* L )
{
  uint8 ap_index=luaL_checkinteger(L, 1);
  luaL_argcheck(L, (ap_index >= 1 && ap_index <= 5), 1, "Valid range: 1-5");
  lua_pushboolean(L, wifi_station_ap_change(ap_index-1));
  return 1;
}
