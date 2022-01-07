
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_9__ {int h; TYPE_1__* L; } ;
typedef int TValue ;
typedef int TString ;
typedef TYPE_2__ LexState ;


 int keyfromval (int *) ;
 int luaC_checkGC (TYPE_1__*) ;
 int * luaH_set (TYPE_1__*,int ,scalar_t__) ;
 int * luaS_newlstr (TYPE_1__*,char const*,size_t) ;
 int setbvalue (int *,int) ;
 int setsvalue2s (TYPE_1__*,int ,int *) ;
 int * tsvalue (int ) ;
 scalar_t__ ttisnil (int *) ;

TString *luaX_newstring (LexState *ls, const char *str, size_t l) {
  lua_State *L = ls->L;
  TValue *o;
  TString *ts = luaS_newlstr(L, str, l);
  setsvalue2s(L, L->top++, ts);
  o = luaH_set(L, ls->h, L->top - 1);
  if (ttisnil(o)) {


    setbvalue(o, 1);
    luaC_checkGC(L);
  }
  else {
    ts = tsvalue(keyfromval(o));
  }
  L->top--;
  return ts;
}
