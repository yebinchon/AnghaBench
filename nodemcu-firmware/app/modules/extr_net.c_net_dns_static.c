
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int ip_addr_t ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_INPROGRESS ;
 scalar_t__ ERR_OK ;
 int LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int* calloc (int,int) ;
 scalar_t__ dns_gethostbyname (char const*,int *,int (*) (char const*,int *,int*),int*) ;
 int free (int*) ;
 int luaL_checkanyfunction (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lwip_lua_checkerr (int *,scalar_t__) ;
 int net_dns_static_cb (char const*,int *,int*) ;

__attribute__((used)) static int net_dns_static( lua_State* L ) {
  size_t dl;
  const char* domain = luaL_checklstring(L, 1, &dl);
  if (!domain && dl > 128) {
    return luaL_error(L, "wrong domain");
  }

  luaL_checkanyfunction(L, 2);
  lua_pushvalue(L, 2);
  int cbref = luaL_ref(L, LUA_REGISTRYINDEX);
  if (cbref == LUA_NOREF) {
    return luaL_error(L, "wrong callback");
  }
  int *cbref_ptr = calloc(1, sizeof(int));
  cbref_ptr[0] = cbref;
  ip_addr_t addr;
  err_t err = dns_gethostbyname(domain, &addr, net_dns_static_cb, cbref_ptr);
  if (err == ERR_OK) {
    net_dns_static_cb(domain, &addr, cbref_ptr);
    return 0;
  } else if (err == ERR_INPROGRESS) {
    return 0;
  } else {
    int e = lwip_lua_checkerr(L, err);
    free(cbref_ptr);
    return e;
  }
  return 0;
}
