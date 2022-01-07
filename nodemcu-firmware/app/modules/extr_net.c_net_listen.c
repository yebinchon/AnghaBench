
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct tcp_pcb {int so_options; } ;
typedef int lua_State ;
struct TYPE_6__ {void* cb_accept_ref; } ;
struct TYPE_7__ {int type; scalar_t__ self_ref; int * udp_pcb; struct tcp_pcb* tcp_pcb; TYPE_1__ server; scalar_t__ pcb; } ;
typedef TYPE_2__ lnet_userdata ;
typedef int ip_addr_t ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int SOF_REUSEADDR ;
 int TYPE_TCP_CLIENT ;


 int ipaddr_aton (char const*,int *) ;
 char* luaL_checklstring (int *,int ,size_t*) ;
 int luaL_error (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,void*) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_islightfunction (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_tointeger (int *,int ) ;
 int lwip_lua_checkerr (int *,scalar_t__) ;
 int net_accept_cb ;
 TYPE_2__* net_get_udata (int *) ;
 int net_udp_recv_cb ;
 int tcp_accept (struct tcp_pcb*,int ) ;
 int tcp_arg (struct tcp_pcb*,TYPE_2__*) ;
 scalar_t__ tcp_bind (struct tcp_pcb*,int *,int ) ;
 int tcp_close (struct tcp_pcb*) ;
 struct tcp_pcb* tcp_listen (struct tcp_pcb*) ;
 struct tcp_pcb* tcp_new () ;
 scalar_t__ udp_bind (int *,int *,int ) ;
 int * udp_new () ;
 int udp_recv (int *,int ,TYPE_2__*) ;
 int udp_remove (int *) ;

int net_listen( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type == TYPE_TCP_CLIENT)
    return luaL_error(L, "invalid user data");
  if (ud->pcb)
    return luaL_error(L, "already listening");
  int stack = 2;
  uint16_t port = 0;
  const char *domain = "0.0.0.0";
  if (lua_isnumber(L, stack))
    port = lua_tointeger(L, stack++);
  if (lua_isstring(L, stack)) {
    size_t dl = 0;
    domain = luaL_checklstring(L, stack++, &dl);
  }
  ip_addr_t addr;
  if (!ipaddr_aton(domain, &addr))
    return luaL_error(L, "invalid IP address");
  if (ud->type == 129) {
    if (lua_isfunction(L, stack) || lua_islightfunction(L, stack)) {
      lua_pushvalue(L, stack++);
      luaL_unref(L, LUA_REGISTRYINDEX, ud->server.cb_accept_ref);
      ud->server.cb_accept_ref = luaL_ref(L, LUA_REGISTRYINDEX);
    } else {
      return luaL_error(L, "need callback");
    }
  }
  err_t err = ERR_OK;
  switch (ud->type) {
    case 129:
      ud->tcp_pcb = tcp_new();
      if (!ud->tcp_pcb)
        return luaL_error(L, "cannot allocate PCB");
      ud->tcp_pcb->so_options |= SOF_REUSEADDR;
      err = tcp_bind(ud->tcp_pcb, &addr, port);
      if (err == ERR_OK) {
        tcp_arg(ud->tcp_pcb, ud);
        struct tcp_pcb *pcb = tcp_listen(ud->tcp_pcb);
        if (!pcb) {
          err = ERR_MEM;
        } else {
          ud->tcp_pcb = pcb;
          tcp_accept(ud->tcp_pcb, net_accept_cb);
        }
      }
      break;
    case 128:
      ud->udp_pcb = udp_new();
      if (!ud->udp_pcb)
        return luaL_error(L, "cannot allocate PCB");
      udp_recv(ud->udp_pcb, net_udp_recv_cb, ud);
      err = udp_bind(ud->udp_pcb, &addr, port);
      break;
  }
  if (err != ERR_OK) {
    switch (ud->type) {
      case 129:
        tcp_close(ud->tcp_pcb);
        ud->tcp_pcb = ((void*)0);
        break;
      case 128:
        udp_remove(ud->udp_pcb);
        ud->udp_pcb = ((void*)0);
        break;
    }
    return lwip_lua_checkerr(L, err);
  }
  if (ud->self_ref == LUA_NOREF) {
    lua_pushvalue(L, 1);
    ud->self_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }
  return 0;
}
