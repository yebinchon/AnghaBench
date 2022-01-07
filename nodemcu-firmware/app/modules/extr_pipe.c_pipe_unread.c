
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int end; int start; int buf; } ;
typedef TYPE_1__ buffer_t ;


 int AT_HEAD ;
 size_t INVALID_LEN ;
 int LUAL_BUFFERSIZE ;
 TYPE_1__* checkPipeTable (int *,int,int ) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_objlen (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (int,char const*,size_t) ;
 int memmove (int,int,int) ;
 TYPE_1__* newPipeUD (int *,int,int) ;

__attribute__((used)) static int pipe_unread(lua_State *L) {
  size_t l = INVALID_LEN;
  const char *s = lua_tolstring(L, 2, &l);
  if (l==0)
    return 0;
  luaL_argcheck(L, l != INVALID_LEN, 2, "must be a string");
  buffer_t *ud = checkPipeTable(L, 1, AT_HEAD);

  do {
    int used = ud->end - ud->start, lrem = LUAL_BUFFERSIZE-used;

    if (used == LUAL_BUFFERSIZE) {
      int i, nUD = lua_objlen(L, 1);
      for (i = nUD; i > 0; i--) {
        lua_rawgeti(L, 1, i); lua_rawseti(L, 1, i+1);
      }
      ud = newPipeUD(L, 1, 1);
      used = 0; lrem = LUAL_BUFFERSIZE;
    } else if (ud->end < LUAL_BUFFERSIZE) {
      memmove(ud->buf + lrem,
              ud->buf + ud->start, used);
    }
    ud->start = lrem; ud->end = LUAL_BUFFERSIZE;

    if (l <= (unsigned )lrem)
      break;



    l -= lrem;
    memcpy(ud->buf, s + l, lrem);
    ud->start = 0;

  } while(1);


  ud->start -= l;
  memcpy(ud->buf + ud->start, s, l);
 return 0;
}
