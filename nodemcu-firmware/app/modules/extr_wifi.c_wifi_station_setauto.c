
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int,int,char*) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int wifi_station_set_auto_connect (unsigned int) ;

__attribute__((used)) static int wifi_station_setauto( lua_State* L )
{
  unsigned a;

  a = luaL_checkinteger( L, 1 );
  luaL_argcheck(L, ( a == 0 || a == 1 ), 1, "0 or 1");
  wifi_station_set_auto_connect(a);
  return 0;
}
