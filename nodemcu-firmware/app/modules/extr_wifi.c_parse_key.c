
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int ipaddr_addr (char const*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_getfield (int *,int,char const*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;

__attribute__((used)) static uint32_t parse_key(lua_State* L, const char * key){
  lua_getfield(L, 1, key);
  if( lua_isstring(L, -1) )
  {
    const char *ip = luaL_checkstring( L, -1 );
    return ipaddr_addr(ip);
  }
  lua_pop(L, 1);
  return 0;
}
