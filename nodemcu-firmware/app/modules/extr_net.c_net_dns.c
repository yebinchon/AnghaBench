
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {scalar_t__ cb_dns_ref; int wait_dns; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ self_ref; TYPE_1__ client; } ;
typedef TYPE_2__ lnet_userdata ;
typedef int ip_addr_t ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_INPROGRESS ;
 scalar_t__ ERR_OK ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ TYPE_TCP_SERVER ;
 scalar_t__ dns_gethostbyname (char const*,int *,int (*) (char const*,int *,TYPE_2__*),TYPE_2__*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_islightfunction (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lwip_lua_checkerr (int *,scalar_t__) ;
 int net_dns_cb (char const*,int *,TYPE_2__*) ;
 TYPE_2__* net_get_udata (int *) ;

int net_dns( lua_State *L ) {
  lnet_userdata *ud = net_get_udata(L);
  if (!ud || ud->type == TYPE_TCP_SERVER)
    return luaL_error(L, "invalid user data");
  size_t dl = 0;
  const char *domain = luaL_checklstring(L, 2, &dl);
  if (!domain)
    return luaL_error(L, "no domain specified");
  if (lua_isfunction(L, 3) || lua_islightfunction(L, 3)) {
    luaL_unref(L, LUA_REGISTRYINDEX, ud->client.cb_dns_ref);
    lua_pushvalue(L, 3);
    ud->client.cb_dns_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }
  if (ud->client.cb_dns_ref == LUA_NOREF)
    return luaL_error(L, "no callback specified");
  ud->client.wait_dns ++;
  int unref = 0;
  if (ud->self_ref == LUA_NOREF) {
    unref = 1;
    lua_pushvalue(L, 1);
    ud->self_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }
  ip_addr_t addr;
  err_t err = dns_gethostbyname(domain, &addr, net_dns_cb, ud);
  if (err == ERR_OK) {
    net_dns_cb(domain, &addr, ud);
  } else if (err != ERR_INPROGRESS) {
    ud->client.wait_dns --;
    if (unref) {
      luaL_unref(L, LUA_REGISTRYINDEX, ud->self_ref);
      ud->self_ref = LUA_NOREF;
    }
    return lwip_lua_checkerr(L, err);
  }
  return 0;
}
