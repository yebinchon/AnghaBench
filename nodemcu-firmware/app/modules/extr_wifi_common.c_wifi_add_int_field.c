
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int lua_pushinteger (int *,int ) ;
 int lua_setfield (int *,int,char*) ;

void wifi_add_int_field(lua_State* L, char* name, lua_Integer integer)
{
  lua_pushinteger(L, integer);
  lua_setfield(L, -2, name);
}
