
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct ip_info {TYPE_1__ gw; TYPE_1__ netmask; TYPE_1__ ip; } ;
typedef int lua_State ;


 int IP2STR (TYPE_1__*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int sprintf (char*,char*,int) ;
 int wifi_get_ip_info (int ,struct ip_info*) ;

__attribute__((used)) static int wifi_getip( lua_State* L, uint8_t mode )
{
  struct ip_info pTempIp;
  char temp[64];
  wifi_get_ip_info(mode, &pTempIp);
  if(pTempIp.ip.addr==0){
    lua_pushnil(L);
    return 1;
  }
  else
  {
    sprintf(temp, "%d.%d.%d.%d", IP2STR(&pTempIp.ip) );
    lua_pushstring( L, temp );
    sprintf(temp, "%d.%d.%d.%d", IP2STR(&pTempIp.netmask) );
    lua_pushstring( L, temp );
    sprintf(temp, "%d.%d.%d.%d", IP2STR(&pTempIp.gw) );
    lua_pushstring( L, temp );
    return 3;
  }
}
