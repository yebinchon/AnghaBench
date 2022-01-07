
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_Integer ;
struct TYPE_6__ {int src_end; } ;
typedef TYPE_1__ MatchState ;


 char* lmemfind (char const*,size_t,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_toboolean (int *,int) ;
 char* match (TYPE_1__*,char const*,char const*) ;
 scalar_t__ nospecials (char const*,size_t) ;
 int posrelat (int ,size_t) ;
 int prepstate (TYPE_1__*,int *,char const*,size_t,char const*,size_t) ;
 int push_captures (TYPE_1__*,char const*,char const*) ;
 int reprepstate (TYPE_1__*) ;

__attribute__((used)) static int str_find_aux (lua_State *L, int find) {
  size_t ls, lp;
  const char *s = luaL_checklstring(L, 1, &ls);
  const char *p = luaL_checklstring(L, 2, &lp);
  lua_Integer init = posrelat(luaL_optinteger(L, 3, 1), ls);
  if (init < 1) init = 1;
  else if (init > (lua_Integer)ls + 1) {
    lua_pushnil(L);
    return 1;
  }

  if (find && (lua_toboolean(L, 4) || nospecials(p, lp))) {

    const char *s2 = lmemfind(s + init - 1, ls - (size_t)init + 1, p, lp);
    if (s2) {
      lua_pushinteger(L, (s2 - s) + 1);
      lua_pushinteger(L, (s2 - s) + lp);
      return 2;
    }
  }
  else {
    MatchState ms;
    const char *s1 = s + init - 1;
    int anchor = (*p == '^');
    if (anchor) {
      p++; lp--;
    }
    prepstate(&ms, L, s, ls, p, lp);
    do {
      const char *res;
      reprepstate(&ms);
      if ((res=match(&ms, s1, p)) != ((void*)0)) {
        if (find) {
          lua_pushinteger(L, (s1 - s) + 1);
          lua_pushinteger(L, res - s);
          return push_captures(&ms, ((void*)0), 0) + 2;
        }
        else
          return push_captures(&ms, s1, res);
      }
    } while (s1++ < ms.src_end && !anchor);
  }
  lua_pushnil(L);
  return 1;
}
