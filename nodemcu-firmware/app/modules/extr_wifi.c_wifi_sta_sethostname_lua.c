
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushboolean (int *,int ) ;
 int wifi_sta_checkhostname (char const*,size_t) ;
 int wifi_station_set_hostname (char*) ;

__attribute__((used)) static int wifi_sta_sethostname_lua( lua_State* L )
{
  size_t len;
  const char *hostname = luaL_checklstring(L, 1, &len);
  luaL_argcheck(L, wifi_sta_checkhostname(hostname, len), 1, "Invalid hostname");
  lua_pushboolean(L, wifi_station_set_hostname((char*)hostname));
  return 1;
}
