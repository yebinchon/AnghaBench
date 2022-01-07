
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 scalar_t__ isspace (unsigned char) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkany (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_optint (int *,int,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_tonumber (int *,int) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int luaB_tonumber (lua_State *L) {
  int base = luaL_optint(L, 2, 10);
  if (base == 10) {
    luaL_checkany(L, 1);
    if (lua_isnumber(L, 1)) {
      lua_pushnumber(L, lua_tonumber(L, 1));
      return 1;
    }
  }
  else {
    const char *s1 = luaL_checkstring(L, 1);
    char *s2;
    unsigned long n;
    luaL_argcheck(L, 2 <= base && base <= 36, 2, "base out of range");
    n = strtoul(s1, &s2, base);
    if (s1 != s2) {
      while (isspace((unsigned char)(*s2))) s2++;
      if (*s2 == '\0') {
        lua_pushnumber(L, (lua_Number)n);
        return 1;
      }
    }
  }
  lua_pushnil(L);
  return 1;
}
