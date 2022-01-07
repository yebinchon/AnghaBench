
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int cb_reconnect_ref; int cb_disconnect_ref; scalar_t__ wait_dns; } ;
struct TYPE_4__ {scalar_t__ type; int self_ref; TYPE_1__ client; int * pcb; } ;
typedef TYPE_2__ lnet_userdata ;
typedef int err_t ;


 int ERR_OK ;
 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ TYPE_TCP_CLIENT ;
 int luaL_unref (int *,int ,int) ;
 int lua_call (int *,int,int ) ;
 int lua_gc (int *,int ,int ) ;
 int * lua_getstate () ;
 int lua_pushinteger (int *,int ) ;
 int lua_rawgeti (int *,int ,int) ;

__attribute__((used)) static void net_err_cb(void *arg, err_t err) {
  lnet_userdata *ud = (lnet_userdata*)arg;
  if (!ud || ud->type != TYPE_TCP_CLIENT || ud->self_ref == LUA_NOREF) return;
  ud->pcb = ((void*)0);
  lua_State *L = lua_getstate();
  int ref;
  if (err != ERR_OK && ud->client.cb_reconnect_ref != LUA_NOREF)
    ref = ud->client.cb_reconnect_ref;
  else ref = ud->client.cb_disconnect_ref;
  if (ref != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, ref);
    lua_rawgeti(L, LUA_REGISTRYINDEX, ud->self_ref);
    lua_pushinteger(L, err);
    lua_call(L, 2, 0);
  }
  if (ud->client.wait_dns == 0) {
    lua_gc(L, LUA_GCSTOP, 0);
    luaL_unref(L, LUA_REGISTRYINDEX, ud->self_ref);
    ud->self_ref = LUA_NOREF;
    lua_gc(L, LUA_GCRESTART, 0);
  }
}
