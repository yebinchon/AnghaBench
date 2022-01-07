
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int TYPE_TCP ;
 int TYPE_TCP_CLIENT ;
 int TYPE_UDP ;
 int luaL_error (int *,char*) ;
 int luaL_optlong (int *,int,int) ;
 int net_create (int *,int ) ;
 int net_createUDPSocket (int *) ;
 int platform_print_deprecation_note (char*,char*) ;
 int tls_socket_create (int *) ;

int net_createConnection( lua_State *L ) {
  int type, secure;

  type = luaL_optlong(L, 1, TYPE_TCP);
  secure = luaL_optlong(L, 2, 0);

  if (type == TYPE_UDP) {
    platform_print_deprecation_note("net.createConnection with net.UDP type", "in next version");
    return net_createUDPSocket( L );
  }
  if (type != TYPE_TCP) return luaL_error(L, "invalid type");
  if (secure) {
    platform_print_deprecation_note("net.createConnection with secure flag", "in next version");



    return luaL_error(L, "secure connections not enabled");

  }
  net_create(L, TYPE_TCP_CLIENT);
  return 1;
}
