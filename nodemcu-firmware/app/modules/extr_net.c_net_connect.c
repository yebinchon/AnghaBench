
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int lua_State ;
struct TYPE_14__ {scalar_t__ cb_connect_ref; int wait_dns; } ;
struct TYPE_15__ {scalar_t__ type; scalar_t__ self_ref; TYPE_3__* tcp_pcb; TYPE_1__ client; scalar_t__ pcb; } ;
typedef TYPE_2__ lnet_userdata ;
typedef int ip_addr_t ;
typedef scalar_t__ err_t ;
struct TYPE_16__ {scalar_t__ remote_port; } ;


 scalar_t__ ERR_INPROGRESS ;
 scalar_t__ ERR_OK ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ TYPE_TCP_CLIENT ;
 scalar_t__ dns_gethostbyname (char const*,int *,int (*) (char const*,int *,TYPE_2__*),TYPE_2__*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_islightfunction (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lwip_lua_checkerr (int *,scalar_t__) ;
 int net_dns_cb (char const*,int *,TYPE_2__*) ;
 int net_err_cb ;
 TYPE_2__* net_get_udata (int *) ;
 int net_sent_cb ;
 int net_tcp_recv_cb ;
 int tcp_abort (TYPE_3__*) ;
 int tcp_arg (TYPE_3__*,TYPE_2__*) ;
 int tcp_err (TYPE_3__*,int ) ;
 TYPE_3__* tcp_new () ;
 int tcp_recv (TYPE_3__*,int ) ;
 int tcp_sent (TYPE_3__*,int ) ;

int net_connect( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type != TYPE_TCP_CLIENT)
    return luaL_error(L, "invalid user data");
  if (ud->pcb)
    return luaL_error(L, "already connected");
  uint16_t port = luaL_checkinteger(L, 2);
  if (port == 0)
    return luaL_error(L, "specify port");
  const char *domain = "127.0.0.1";
  if (lua_isstring(L, 3)) {
    size_t dl = 0;
    domain = luaL_checklstring(L, 3, &dl);
  }
  if (lua_gettop(L) > 3) {
    luaL_argcheck(L, lua_isfunction(L, 4) || lua_islightfunction(L, 4), 4, "not a function");
    lua_pushvalue(L, 4);
    luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_connect_ref);
    ud->client.cb_connect_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }
  ud->tcp_pcb = tcp_new();
  if (!ud->tcp_pcb)
    return luaL_error(L, "cannot allocate PCB");
  tcp_arg(ud->tcp_pcb, ud);
  tcp_err(ud->tcp_pcb, net_err_cb);
  tcp_recv(ud->tcp_pcb, net_tcp_recv_cb);
  tcp_sent(ud->tcp_pcb, net_sent_cb);
  ud->tcp_pcb->remote_port = port;
  ip_addr_t addr;
  ud->client.wait_dns ++;
  int unref = 0;
  if (ud->self_ref == LUA_NOREF) {
    unref = 1;
    lua_pushvalue(L, 1);
    ud->self_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }
  err_t err = dns_gethostbyname(domain, &addr, net_dns_cb, ud);
  if (err == ERR_OK) {
    net_dns_cb(domain, &addr, ud);
  } else if (err != ERR_INPROGRESS) {
    ud->client.wait_dns --;
    if (unref) {
      luaL_unref(L, LUA_REGISTRYINDEX, ud->self_ref);
      ud->self_ref = LUA_NOREF;
    }
    tcp_abort(ud->tcp_pcb);
    ud->tcp_pcb = ((void*)0);
    return lwip_lua_checkerr(L, err);
  }
  return 0;
}
