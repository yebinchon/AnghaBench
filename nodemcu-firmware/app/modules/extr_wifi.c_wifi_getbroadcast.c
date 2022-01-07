
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32 ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {int addr; } ;
struct ip_info {TYPE_1__ netmask; TYPE_2__ ip; } ;
struct ip_addr {int addr; } ;
typedef int lua_State ;


 int IP2STR (struct ip_addr*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int sprintf (char*,char*,int) ;
 int wifi_get_ip_info (int ,struct ip_info*) ;

__attribute__((used)) static int wifi_getbroadcast( lua_State* L, uint8_t mode )
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
    struct ip_addr broadcast_address;

    uint32 subnet_mask32 = pTempIp.netmask.addr & pTempIp.ip.addr;
    uint32 broadcast_address32 = ~pTempIp.netmask.addr | subnet_mask32;
    broadcast_address.addr = broadcast_address32;

    sprintf(temp, "%d.%d.%d.%d", IP2STR(&broadcast_address) );
    lua_pushstring( L, temp );

    return 1;
  }
}
