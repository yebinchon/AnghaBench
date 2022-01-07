
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int lua_State ;


 int luaL_argcheck (int *,int,int,char*) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int wifi_station_ap_number_set (int ) ;

__attribute__((used)) static int wifi_station_ap_number_set4lua( lua_State* L )
{
  unsigned limit=luaL_checkinteger(L, 1);
  luaL_argcheck(L, (limit >= 1 && limit <= 5), 1, "Valid range: 1-5");
  lua_pushboolean(L, wifi_station_ap_number_set((uint8)limit));
  return 1;
}
