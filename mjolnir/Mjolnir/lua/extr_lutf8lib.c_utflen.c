
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int u_posrelat (int ,size_t) ;
 char* utf8_decode (char const*,int *) ;

__attribute__((used)) static int utflen (lua_State *L) {
  int n = 0;
  size_t len;
  const char *s = luaL_checklstring(L, 1, &len);
  lua_Integer posi = u_posrelat(luaL_optinteger(L, 2, 1), len);
  lua_Integer posj = u_posrelat(luaL_optinteger(L, 3, -1), len);
  luaL_argcheck(L, 1 <= posi && --posi <= (lua_Integer)len, 2,
                   "initial position out of string");
  luaL_argcheck(L, --posj < (lua_Integer)len, 3,
                   "final position out of string");
  while (posi <= posj) {
    const char *s1 = utf8_decode(s + posi, ((void*)0));
    if (s1 == ((void*)0)) {
      lua_pushnil(L);
      lua_pushinteger(L, posi + 1);
      return 2;
    }
    posi = s1 - s;
    n++;
  }
  lua_pushinteger(L, n);
  return 1;
}
