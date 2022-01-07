
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int end; int start; int buf; } ;
typedef TYPE_1__ buffer_t ;


 int AT_TAIL ;
 size_t INVALID_LEN ;
 int LUAL_BUFFERSIZE ;
 TYPE_1__* checkPipeTable (int *,int,int ) ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ lua_objlen (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (int,char const*,size_t) ;
 int memmove (int,int,int) ;
 TYPE_1__* newPipeUD (int *,int,scalar_t__) ;

__attribute__((used)) static int pipe_write(lua_State *L) {
  size_t l = INVALID_LEN;
  const char *s = lua_tolstring(L, 2, &l);
  if (l==0)
    return 0;
  luaL_argcheck(L, l != INVALID_LEN, 2, "must be a string");
  buffer_t *ud = checkPipeTable(L, 1, AT_TAIL);

  do {
    int used = ud->end - ud->start;

    if (used == LUAL_BUFFERSIZE) {
      ud = newPipeUD(L, 1, lua_objlen(L, 1)+1);
      used = 0;
    } else if (ud->start) {
      memmove(ud->buf, ud->buf + ud->start, used);
      ud->start = 0; ud->end = used;
    }

    int lrem = LUAL_BUFFERSIZE-used;
    if (l <= (unsigned )lrem)
      break;



    memcpy(ud->buf + ud->end, s, lrem);
    ud->end += lrem;
    l -= lrem;
    s += lrem;

  } while(1);


  memcpy(ud->buf + ud->end, s, l);
  ud->end += l;
 return 0;
}
