
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint8 ;
typedef int lua_State ;


 int INVALID_MAC_STR ;
 int ets_str2macaddr (int *,char const*) ;
 int luaL_argcheck (int *,int,int,int ) ;
 char* luaL_checklstring (int *,int,unsigned int*) ;
 int lua_pushboolean (int *,int ) ;
 int wifi_set_macaddr (int ,int *) ;

__attribute__((used)) static int wifi_setmac( lua_State* L, uint8_t mode )
{
  uint8_t mac[6];
  unsigned len = 0;
  const char *macaddr = luaL_checklstring( L, 1, &len );
  luaL_argcheck(L, len==17, 1, INVALID_MAC_STR);
  ets_str2macaddr(mac, macaddr);
  lua_pushboolean(L,wifi_set_macaddr(mode, (uint8 *)mac));
  return 1;
}
