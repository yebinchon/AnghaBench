
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
typedef int lua_State ;
struct TYPE_3__ {scalar_t__ cb_connect_ref; } ;
struct TYPE_4__ {scalar_t__ self_ref; TYPE_1__ client; struct tcp_pcb* pcb; } ;
typedef TYPE_2__ lnet_userdata ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_ABRT ;
 scalar_t__ ERR_OK ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int net_err_cb (void*,scalar_t__) ;

__attribute__((used)) static err_t net_connected_cb(void *arg, struct tcp_pcb *tpcb, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || ud->pcb != tpcb) return ERR_ABRT;
  if (err != ERR_OK) {
    net_err_cb(arg, err);
    return ERR_ABRT;
  }
  lua_State *L = lua_getstate();
  if (ud->self_ref != LUA_NOREF && ud->client.cb_connect_ref != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->client.cb_connect_ref);
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->self_ref);
    lua_call(L, 1, 0);
  }
  return ERR_OK;
}
