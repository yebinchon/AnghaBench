
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int err_t ;
 int luaL_error (int *,char*) ;

int lwip_lua_checkerr (lua_State *L, err_t err) {
  switch (err) {
    case 134: return 0;
    case 135: return luaL_error(L, "out of memory");
    case 141: return luaL_error(L, "buffer error");
    case 131: return luaL_error(L, "timeout");
    case 132: return luaL_error(L, "routing problem");
    case 137: return luaL_error(L, "in progress");
    case 129: return luaL_error(L, "illegal value");
    case 128: return luaL_error(L, "would block");
    case 143: return luaL_error(L, "connection aborted");
    case 133: return luaL_error(L, "connection reset");
    case 140: return luaL_error(L, "connection closed");
    case 139: return luaL_error(L, "not connected");
    case 142: return luaL_error(L, "illegal argument");
    case 130: return luaL_error(L, "address in use");
    case 138: return luaL_error(L, "netif error");
    case 136: return luaL_error(L, "already connected");
    default: return luaL_error(L, "unknown error");
  }
}
