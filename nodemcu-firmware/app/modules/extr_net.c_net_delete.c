
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {void* cb_accept_ref; } ;
struct TYPE_5__ {void* cb_sent_ref; void* cb_receive_ref; void* cb_dns_ref; void* cb_reconnect_ref; void* cb_disconnect_ref; void* cb_connect_ref; } ;
struct TYPE_7__ {int type; void* self_ref; TYPE_2__ server; TYPE_1__ client; int * udp_pcb; int * tcp_pcb; scalar_t__ pcb; } ;
typedef TYPE_3__ lnet_userdata ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 void* LUA_NOREF ;
 int LUA_REGISTRYINDEX ;



 int luaL_error (int *,char*) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_gc (int *,int ,int ) ;
 TYPE_3__* net_get_udata (int *) ;
 int tcp_abort (int *) ;
 int tcp_arg (int *,int *) ;
 int tcp_close (int *) ;
 int udp_remove (int *) ;

int net_delete( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud) return luaL_error(L, "no user data");
  if (ud->pcb) {
    switch (ud->type) {
      case 130:
        tcp_arg(ud->tcp_pcb, ((void*)0));
        tcp_abort(ud->tcp_pcb);
        ud->tcp_pcb = ((void*)0);
        break;
      case 129:
        tcp_close(ud->tcp_pcb);
        ud->tcp_pcb = ((void*)0);
        break;
      case 128:
        udp_remove(ud->udp_pcb);
        ud->udp_pcb = ((void*)0);
        break;
    }
  }
  switch (ud->type) {
    case 130:
      luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_connect_ref);
      ud->client.cb_connect_ref = LUA_NOREF;
      luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_disconnect_ref);
      ud->client.cb_disconnect_ref = LUA_NOREF;
      luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_reconnect_ref);
      ud->client.cb_reconnect_ref = LUA_NOREF;
    case 128:
      luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_dns_ref);
      ud->client.cb_dns_ref = LUA_NOREF;
      luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_receive_ref);
      ud->client.cb_receive_ref = LUA_NOREF;
      luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_sent_ref);
      ud->client.cb_sent_ref = LUA_NOREF;
      break;
    case 129:
      luaL_unref(L, LUA_REGISTRYINDEX, ud->server.cb_accept_ref);
      ud->server.cb_accept_ref = LUA_NOREF;
      break;
  }
  lua_gc(L, LUA_GCSTOP, 0);
  luaL_unref(L, LUA_REGISTRYINDEX, ud->self_ref);
  ud->self_ref = LUA_NOREF;
  lua_gc(L, LUA_GCRESTART, 0);
  return 0;
}
