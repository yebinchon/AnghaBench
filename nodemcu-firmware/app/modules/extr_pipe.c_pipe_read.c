
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int end; int start; char const* buf; } ;
typedef TYPE_1__ buffer_t ;


 int AT_HEAD ;
 int CHAR_DELIM ;
 TYPE_1__* checkPipeTable (int *,int,int ) ;
 TYPE_1__* checkPipeUD (int *,int) ;
 char getsize_delim (int *,int,int*) ;
 int lua_concat (int *,int) ;
 int lua_objlen (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int pipe_read(lua_State *L) {
  buffer_t *ud = checkPipeTable(L, 1, AT_HEAD);
  int i, k=0, n;
  lua_settop(L,2);
  const char delim = getsize_delim(L, 2, &n);
  lua_pop(L,1);

  while (ud && n) {
    int want, used, avail = ud->end - ud->start;

    if (n < 0 ) {

      for (i = ud->start; i < ud->end && ud->buf[i] != delim; i++) {}


      if (i == ud->end) {
        want = used = avail;
      } else {
        want = used = i + 1 - ud->start;
        if (n == CHAR_DELIM)
          want--;
      }
    } else {
      want = used = (n < avail) ? n : avail;
      n -= used;
    }
    lua_pushlstring(L, ud->buf + ud->start, want);
    k++;
    ud->start += used;
    if (ud->start == ud->end) {

      int nUD = lua_objlen(L, 1);
      for (i = 1; i < nUD; i++) {
        lua_rawgeti(L, 1, i+1); lua_rawseti(L, 1, i);
      }
      lua_pushnil(L); lua_rawseti(L, 1, nUD--);
      if (nUD) {
        lua_rawgeti(L, 1, 1);
        ud = checkPipeUD(L, -1);
        lua_pop(L, 1);
      } else {
        ud = ((void*)0);
      }
    }
  }
  if (k)
    lua_concat(L, k);
  else
    lua_pushnil(L);
  return 1;
}
