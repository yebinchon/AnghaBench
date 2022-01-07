
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ LUA_TNUMBER ;
 int LUA_TSTRING ;
 char const* b_str2int (char const*,int,int*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkany (int *,int) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_settop (int *,int) ;
 size_t lua_stringtonumber (int *,char const*) ;
 char* lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int luaB_tonumber (lua_State *L) {
  if (lua_isnoneornil(L, 2)) {
    luaL_checkany(L, 1);
    if (lua_type(L, 1) == LUA_TNUMBER) {
      lua_settop(L, 1);
      return 1;
    }
    else {
      size_t l;
      const char *s = lua_tolstring(L, 1, &l);
      if (s != ((void*)0) && lua_stringtonumber(L, s) == l + 1)
        return 1;

    }
  }
  else {
    size_t l;
    const char *s;
    lua_Integer n = 0;
    lua_Integer base = luaL_checkinteger(L, 2);
    luaL_checktype(L, 1, LUA_TSTRING);
    s = lua_tolstring(L, 1, &l);
    luaL_argcheck(L, 2 <= base && base <= 36, 2, "base out of range");
    if (b_str2int(s, (int)base, &n) == s + l) {
      lua_pushinteger(L, n);
      return 1;
    }
  }
  lua_pushnil(L);
  return 1;
}
