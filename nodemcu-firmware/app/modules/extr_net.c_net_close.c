
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ wait_dns; } ;
struct TYPE_5__ {int type; int self_ref; TYPE_1__ client; int * pcb; int * udp_pcb; int * tcp_pcb; } ;
typedef TYPE_2__ lnet_userdata ;


 int ERR_OK ;
 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;



 int luaL_error (int *,char*) ;
 int luaL_unref (int *,int ,int ) ;
 int lua_gc (int *,int ,int ) ;
 TYPE_2__* net_get_udata (int *) ;
 int tcp_abort (int *) ;
 int tcp_arg (int *,int *) ;
 int tcp_close (int *) ;
 int udp_remove (int *) ;

int net_close( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud) return luaL_error(L, "invalid user data");
  if (ud->pcb) {
    switch (ud->type) {
      case 130:
        if (ERR_OK != tcp_close(ud->tcp_pcb)) {
          tcp_arg(ud->tcp_pcb, ((void*)0));
          tcp_abort(ud->tcp_pcb);
        }
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
  } else {
    return luaL_error(L, "not connected");
  }
  if (ud->type == 129 ||
     (ud->pcb == ((void*)0) && ud->client.wait_dns == 0)) {
    lua_gc(L, LUA_GCSTOP, 0);
    luaL_unref(L, LUA_REGISTRYINDEX, ud->self_ref);
    ud->self_ref = LUA_NOREF;
    lua_gc(L, LUA_GCRESTART, 0);
  }
  return 0;
}
