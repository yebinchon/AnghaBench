
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int lua_State ;
struct TYPE_8__ {int type; TYPE_2__* udp_pcb; TYPE_1__* tcp_pcb; int pcb; } ;
typedef TYPE_3__ lnet_userdata ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_4__ ip_addr_t ;
struct TYPE_7__ {scalar_t__ local_port; TYPE_4__ local_ip; } ;
struct TYPE_6__ {scalar_t__ local_port; TYPE_4__ local_ip; } ;


 int IP2STR (int *) ;
 int IPSTR ;



 int bzero (char*,int) ;
 int ets_sprintf (char*,int ,int ) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 TYPE_3__* net_get_udata (int *) ;

int net_getaddr( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud) return luaL_error(L, "invalid user data");
  if (!ud->pcb) {
    lua_pushnil(L);
    lua_pushnil(L);
    return 2;
  }
  uint16_t port;
  ip_addr_t addr;
  switch (ud->type) {
    case 130:
    case 129:
      addr = ud->tcp_pcb->local_ip;
      port = ud->tcp_pcb->local_port;
      break;
    case 128:
      addr = ud->udp_pcb->local_ip;
      port = ud->udp_pcb->local_port;
      break;
  }
  if (port == 0) {
    lua_pushnil(L);
    lua_pushnil(L);
    return 2;
  }
  char addr_str[16];
  bzero(addr_str, 16);
  ets_sprintf(addr_str, IPSTR, IP2STR(&addr.addr));
  lua_pushinteger(L, port);
  lua_pushstring(L, addr_str);
  return 2;
}
