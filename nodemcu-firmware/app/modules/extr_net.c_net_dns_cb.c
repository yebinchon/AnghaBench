
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {scalar_t__ cb_dns_ref; scalar_t__ wait_dns; } ;
struct TYPE_8__ {scalar_t__ self_ref; scalar_t__ type; TYPE_1__ client; scalar_t__ pcb; TYPE_4__* tcp_pcb; } ;
typedef TYPE_2__ lnet_userdata ;
struct TYPE_9__ {int addr; } ;
typedef TYPE_3__ ip_addr_t ;
struct TYPE_10__ {scalar_t__ state; int remote_port; } ;


 scalar_t__ CLOSED ;
 int IP2STR (int*) ;
 int IPSTR ;
 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ TYPE_TCP_CLIENT ;
 int bzero (char*,int) ;
 int ets_sprintf (char*,int ,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_call (int *,int,int ) ;
 int lua_gc (int *,int ,int ) ;
 int * lua_getstate () ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int net_connected_cb ;
 int tcp_connect (TYPE_4__*,TYPE_3__*,int ,int ) ;

__attribute__((used)) static void net_dns_cb(const char *name, ip_addr_t *ipaddr, void *arg) {
  ip_addr_t addr;
  if (ipaddr != ((void*)0)) addr = *ipaddr;
  else addr.addr = 0xFFFFFFFF;
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud) return;
  lua_State *L = lua_getstate();
  if (ud->self_ref != LUA_NOREF && ud->client.cb_dns_ref != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->client.cb_dns_ref);
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->self_ref);
    if (addr.addr != 0xFFFFFFFF) {
      char iptmp[16];
      bzero(iptmp, 16);
      ets_sprintf(iptmp, IPSTR, IP2STR(&addr.addr));
      lua_pushstring(L, iptmp);
    } else {
      lua_pushnil(L);
    }
    lua_call(L, 2, 0);
  }
  ud->client.wait_dns --;
  if (ud->pcb && ud->type == TYPE_TCP_CLIENT && ud->tcp_pcb->state == CLOSED) {
    tcp_connect(ud->tcp_pcb, &addr, ud->tcp_pcb->remote_port, net_connected_cb);
  } else if (!ud->pcb && ud->client.wait_dns == 0) {
    lua_gc(L, LUA_GCSTOP, 0);
    luaL_unref(L, LUA_REGISTRYINDEX, ud->self_ref);
    ud->self_ref = LUA_NOREF;
    lua_gc(L, LUA_GCRESTART, 0);
  }
}
