
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32_t ;
typedef int lua_State ;
typedef int ip_addr_t ;


 int DNS_MAX_SERVERS ;
 scalar_t__ IPADDR_ANY ;
 scalar_t__ IPADDR_NONE ;
 int dns_setserver (int,int *) ;
 int ip4_addr_set_u32 (int *,scalar_t__) ;
 scalar_t__ ipaddr_addr (char const*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 int luaL_optint (int *,int,int ) ;

__attribute__((used)) static int net_setdnsserver( lua_State* L ) {
  size_t l;
  u32_t ip32;

  const char *server = luaL_checklstring( L, 1, &l );
  if (l>16 || server == ((void*)0) || (ip32 = ipaddr_addr(server)) == IPADDR_NONE || ip32 == IPADDR_ANY)
    return luaL_error( L, "invalid dns server ip" );

  int numdns = luaL_optint(L, 2, 0);
  if (numdns >= DNS_MAX_SERVERS)
    return luaL_error( L, "server index out of range [0-%d]", DNS_MAX_SERVERS - 1);

  ip_addr_t ipaddr;
  ip4_addr_set_u32(&ipaddr, ip32);
  dns_setserver(numdns,&ipaddr);

  return 0;
}
