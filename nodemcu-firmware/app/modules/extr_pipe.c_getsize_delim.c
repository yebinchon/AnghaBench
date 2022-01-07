
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CHAR_DELIM ;
 int CHAR_DELIM_KEEP ;
 scalar_t__ LUA_TNUMBER ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static char getsize_delim (lua_State *L, int ndx, int *len) {
  char delim;
  int n;
  if( lua_type( L, ndx ) == LUA_TNUMBER ) {
    n = luaL_checkinteger( L, ndx );
    luaL_argcheck(L, n > 0, ndx, "invalid chunk size");
    delim = '\0';
  } else if (lua_isnil(L, ndx)) {
    n = CHAR_DELIM;
    delim = '\n';
  } else {
    size_t ldelim;
    const char *s = lua_tolstring( L, 2, &ldelim);
    n = ldelim == 2 && s[1] == '+' ? CHAR_DELIM_KEEP : CHAR_DELIM ;
    luaL_argcheck(L, ldelim + n == 0, ndx, "invalid delimiter");
    delim = s[0];
  }
  if (len)
    *len = n;
  return delim;
}
