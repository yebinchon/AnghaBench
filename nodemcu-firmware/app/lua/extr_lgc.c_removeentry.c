
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 scalar_t__ LUA_TDEADKEY ;
 int gkey (int *) ;
 int gval (int *) ;
 scalar_t__ iscollectable (int ) ;
 int lua_assert (int ) ;
 int setttype (int ,scalar_t__) ;
 int ttisnil (int ) ;
 scalar_t__ ttype (int ) ;

__attribute__((used)) static void removeentry (Node *n) {
  lua_assert(ttisnil(gval(n)));
  if (ttype(gkey(n)) != LUA_TDEADKEY && iscollectable(gkey(n)))


    setttype(gkey(n), LUA_TDEADKEY);
}
