
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int MAC2STR (int *) ;
 char* MACSTR ;
 int lua_pushstring (int *,char*) ;
 int sprintf (char*,char*,int ) ;
 int wifi_get_macaddr (int ,int *) ;

__attribute__((used)) static int wifi_getmac( lua_State* L, uint8_t mode )
{
  char temp[64];
  uint8_t mac[6];
  wifi_get_macaddr(mode, mac);
  sprintf(temp, MACSTR, MAC2STR(mac));
  lua_pushstring( L, temp );
  return 1;
}
