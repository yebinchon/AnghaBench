
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;






 scalar_t__ luaL_callmeta (int *,int,char*) ;
 int luaL_checkany (int *,int) ;
 int luaL_typename (int *,int) ;
 int lua_pushfstring (int *,char*,int ,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 int lua_type (int *,int) ;

__attribute__((used)) static int luaB_tostring (lua_State *L) {
  luaL_checkany(L, 1);
  if (luaL_callmeta(L, 1, "__tostring"))
    return 1;
  switch (lua_type(L, 1)) {
    case 129:
      lua_pushstring(L, lua_tostring(L, 1));
      break;
    case 128:
      lua_pushvalue(L, 1);
      break;
    case 131:
      lua_pushstring(L, (lua_toboolean(L, 1) ? "true" : "false"));
      break;
    case 130:
      lua_pushliteral(L, "nil");
      break;
    default:
      lua_pushfstring(L, "%s: %p", luaL_typename(L, 1), lua_topointer(L, 1));
      break;
  }
  return 1;
}
