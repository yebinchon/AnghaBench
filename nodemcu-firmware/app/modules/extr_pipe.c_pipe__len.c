
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ buffer_t ;


 scalar_t__ LUA_TTABLE ;
 TYPE_1__* checkPipeUD (int *,int) ;
 scalar_t__ lua_objlen (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int pipe__len (lua_State *L) {
  if (lua_type(L, 1) == LUA_TTABLE) {
    lua_pushinteger(L, lua_objlen(L, 1));
  } else {
    buffer_t *ud = checkPipeUD(L, 1);
    lua_pushinteger(L, ud->end - ud->start);
  }
  return 1;
}
