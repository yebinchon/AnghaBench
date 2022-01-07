
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int addr; } ;
typedef TYPE_1__ ip_addr_t ;


 int IP2STR (int*) ;
 char* IPSTR ;
 int LUA_REGISTRYINDEX ;
 int free (void*) ;
 int luaL_unref (int *,int ,int) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int ,int) ;
 size_t sprintf (char*,char*,int ) ;

__attribute__((used)) static void net_dns_static_cb(const char *name, ip_addr_t *ipaddr, void *callback_arg) {
  ip_addr_t addr;
  if (ipaddr != ((void*)0))
    addr = *ipaddr;
  else addr.addr = 0xFFFFFFFF;
  int cb_ref = ((int*)callback_arg)[0];
  free(callback_arg);
  lua_State *L = lua_getstate();

  lua_rawgeti(L, LUA_REGISTRYINDEX, cb_ref);
  lua_pushnil(L);
  if (addr.addr != 0xFFFFFFFF) {
    char iptmp[20];
    size_t ipl = sprintf(iptmp, IPSTR, IP2STR(&addr.addr));
    lua_pushlstring(L, iptmp, ipl);
  } else {
    lua_pushnil(L);
  }
  lua_call(L, 2, 0);

  luaL_unref(L, LUA_REGISTRYINDEX, cb_ref);
}
