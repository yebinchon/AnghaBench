
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mac ;
typedef int lua_State ;


 int INVALID_MAC_STR ;
 int ets_str2macaddr (int *,char const*) ;
 int luaL_argcheck (int *,int,int,int ) ;
 char* luaL_checklstring (int *,int,unsigned int*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int memset (int **,int,int) ;
 int wifi_softap_deauth (int *) ;

__attribute__((used)) static int wifi_ap_deauth( lua_State* L )
{
  uint8_t mac[6];
  unsigned len = 0;
  if(lua_isstring(L, 1))
  {
    const char *macaddr = luaL_checklstring( L, 1, &len );
    luaL_argcheck(L, len==17, 1, INVALID_MAC_STR);
    ets_str2macaddr(mac, macaddr);
  }
  else
  {
    memset(&mac, 0xFF, sizeof(mac));
  }
  lua_pushboolean(L,wifi_softap_deauth(mac));
  return 1;
}
