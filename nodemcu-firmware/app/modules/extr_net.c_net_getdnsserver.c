
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int addr; } ;
typedef TYPE_1__ ip_addr_t ;


 int DNS_MAX_SERVERS ;
 int IP2STR (int *) ;
 char* IPSTR ;
 TYPE_1__ dns_getserver (int) ;
 scalar_t__ ip_addr_isany (TYPE_1__*) ;
 int luaL_error (int *,char*,int) ;
 int luaL_optint (int *,int,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int net_getdnsserver( lua_State* L ) {
  int numdns = luaL_optint(L, 1, 0);
  if (numdns >= DNS_MAX_SERVERS)
    return luaL_error( L, "server index out of range [0-%d]", DNS_MAX_SERVERS - 1);




  ip_addr_t ipaddr = dns_getserver(numdns);

  if ( ip_addr_isany(&ipaddr) ) {
    lua_pushnil( L );
  } else {
    char temp[20] = {0};
    sprintf(temp, IPSTR, IP2STR( &ipaddr.addr ) );
    lua_pushstring( L, temp );
  }

  return 1;
}
