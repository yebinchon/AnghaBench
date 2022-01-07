
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TString ;


 void* fromFashAddr (int ) ;
 int lua_assert (int) ;
 int lua_isnil (TYPE_1__*,int) ;
 int lua_pop (TYPE_1__*,int) ;
 int lua_pushnil (TYPE_1__*) ;
 int lua_rawget (TYPE_1__*,int) ;
 int lua_tointeger (TYPE_1__*,int) ;
 int setsvalue (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static void *resolveTString(lua_State* L, TString *s) {
  if (!s)
    return ((void*)0);
  lua_pushnil(L);
  setsvalue(L, L->top-1, s);
  lua_rawget(L, -2);
  lua_assert(!lua_isnil(L, -1));
  void *ts = fromFashAddr(lua_tointeger(L, -1));
  lua_pop(L, 1);
  return ts;
}
