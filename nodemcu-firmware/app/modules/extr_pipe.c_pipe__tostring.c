
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; scalar_t__ buf; } ;
typedef TYPE_1__ buffer_t ;


 scalar_t__ LUA_TTABLE ;
 TYPE_1__* checkPipeUD (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushlstring (int *,scalar_t__,scalar_t__) ;
 int lua_topointer (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int pipe__tostring (lua_State *L) {
  if (lua_type(L, 1) == LUA_TTABLE) {
    lua_pushfstring(L, "Pipe: %p", lua_topointer(L, 1));
  } else {
    buffer_t *ud = checkPipeUD(L, 1);
    lua_pushlstring(L, ud->buf + ud->start, ud->end - ud->start);
  }
  return 1;
}
