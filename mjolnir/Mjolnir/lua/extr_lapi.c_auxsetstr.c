
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int TString ;


 int api_checknelems (TYPE_1__*,int) ;
 int api_incr_top (TYPE_1__*) ;
 int luaH_getstr ;
 int * luaS_new (TYPE_1__*,char const*) ;
 scalar_t__ luaV_fastset (TYPE_1__*,int const*,int *,int const*,int ,scalar_t__) ;
 int luaV_finishset (TYPE_1__*,int const*,scalar_t__,scalar_t__,int const*) ;
 int lua_unlock (TYPE_1__*) ;
 int setsvalue2s (TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static void auxsetstr (lua_State *L, const TValue *t, const char *k) {
  const TValue *slot;
  TString *str = luaS_new(L, k);
  api_checknelems(L, 1);
  if (luaV_fastset(L, t, str, slot, luaH_getstr, L->top - 1))
    L->top--;
  else {
    setsvalue2s(L, L->top, str);
    api_incr_top(L);
    luaV_finishset(L, t, L->top - 1, L->top - 2, slot);
    L->top -= 2;
  }
  lua_unlock(L);
}
