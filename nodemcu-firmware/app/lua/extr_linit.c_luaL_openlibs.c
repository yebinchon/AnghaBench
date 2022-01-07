
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int LROT_TABLEREF (int ) ;
 scalar_t__ fvalue (scalar_t__) ;
 int lua_call (TYPE_1__*,int,int ) ;
 scalar_t__ lua_islightfunction (TYPE_1__*,int) ;
 int lua_libs ;
 scalar_t__ lua_next (TYPE_1__*,int) ;
 int lua_pop (TYPE_1__*,int) ;
 int lua_pushnil (TYPE_1__*) ;
 int lua_pushrotable (TYPE_1__*,int ) ;
 int lua_pushvalue (TYPE_1__*,int) ;

void luaL_openlibs (lua_State *L) {

  lua_pushrotable(L, LROT_TABLEREF(lua_libs));
  lua_pushnil(L);




  while (lua_next(L, -2) != 0) {
    if (lua_islightfunction(L,-1) &&
        fvalue(L->top-1)) {
      lua_pushvalue(L, -2);
      lua_call(L, 1, 0);
    } else {
      lua_pop(L, 1);
    }
  }
  lua_pop(L, 1);
}
