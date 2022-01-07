
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16_t ;
struct tcp_pcb {int dummy; } ;
typedef int lua_State ;
struct TYPE_3__ {scalar_t__ cb_sent_ref; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; int pcb; } ;
typedef TYPE_2__ lnet_userdata ;
typedef int err_t ;


 int ERR_ABRT ;
 int ERR_OK ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ TYPE_TCP_CLIENT ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,scalar_t__) ;

__attribute__((used)) static err_t net_sent_cb(void *arg, struct tcp_pcb *tpcb, u16_t len) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || !ud->pcb || ud->type != TYPE_TCP_CLIENT || ud->self_ref == LUA_NOREF) return ERR_ABRT;
  if (ud->client.cb_sent_ref == LUA_NOREF) return ERR_OK;
  lua_State *L = lua_getstate();
  lua_rawgeti(L, LUA_REGISTRYINDEX, ud->client.cb_sent_ref);
  lua_rawgeti(L, LUA_REGISTRYINDEX, ud->self_ref);
  lua_call(L, 1, 0);
  return ERR_OK;
}
