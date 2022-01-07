
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16_t ;
struct pbuf {struct pbuf* next; int len; int payload; } ;
typedef int lua_State ;
struct TYPE_6__ {scalar_t__ cb_receive_ref; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; } ;
typedef TYPE_2__ lnet_userdata ;
struct TYPE_8__ {int addr; } ;
typedef TYPE_3__ ip_addr_t ;


 int IP2STR (int *) ;
 int IPSTR ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ TYPE_UDP_SOCKET ;
 int ets_sprintf (char*,int ,int ) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int pbuf_free (struct pbuf*) ;

__attribute__((used)) static void net_recv_cb(lnet_userdata *ud, struct pbuf *p, ip_addr_t *addr, u16_t port) {
  if (ud->client.cb_receive_ref == LUA_NOREF) {
    pbuf_free(p);
    return;
  }

  int num_args = 2;
  char iptmp[16] = { 0, };
  if (ud->type == TYPE_UDP_SOCKET)
  {
    num_args += 2;
    ets_sprintf(iptmp, IPSTR, IP2STR(&addr->addr));
  }

  lua_State *L = lua_getstate();
  struct pbuf *pp = p;
  while (pp)
  {
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->client.cb_receive_ref);
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->self_ref);
    lua_pushlstring(L, pp->payload, pp->len);
    if (ud->type == TYPE_UDP_SOCKET) {
      lua_pushinteger(L, port);
      lua_pushstring(L, iptmp);
    }
    lua_call(L, num_args, 0);
    pp = pp->next;
  }
  pbuf_free(p);
}
