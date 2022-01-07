
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_20__ {scalar_t__ flags; int metatable; } ;
typedef TYPE_2__ Table ;
typedef int const TValue ;
typedef int StkId ;


 int MAXTAGLOOP ;
 int TM_NEWINDEX ;
 int callTM (TYPE_1__*,int const*,int const*,int const*,int ) ;
 int const* fasttm (TYPE_1__*,int ,int ) ;
 int fixedstack (TYPE_1__*) ;
 TYPE_2__* hvalue (int const*) ;
 int luaC_barriert (TYPE_1__*,TYPE_2__*,int ) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int luaG_typeerror (TYPE_1__*,int const*,char*) ;
 int const* luaH_set (TYPE_1__*,TYPE_2__*,int const*) ;
 int const* luaT_gettmbyobj (TYPE_1__*,int const*,int ) ;
 int setnilvalue (scalar_t__) ;
 int setobj (TYPE_1__*,int const*,int const*) ;
 int setobj2s (TYPE_1__*,scalar_t__,int const*) ;
 int setobj2t (TYPE_1__*,int const*,int ) ;
 scalar_t__ ttisfunction (int const*) ;
 scalar_t__ ttislightfunction (int const*) ;
 scalar_t__ ttisnil (int const*) ;
 scalar_t__ ttisrotable (int const*) ;
 scalar_t__ ttistable (int const*) ;
 int unfixedstack (TYPE_1__*) ;

void luaV_settable (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  TValue temp;
  setnilvalue(L->top);
  L->top++;
  fixedstack(L);
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm = ((void*)0);
    if (ttistable(t)) {
      Table *h = hvalue(t);
      TValue *oldval = luaH_set(L, h, key);
      if ((!ttisnil(oldval)) ||
          (tm = fasttm(L, h->metatable, TM_NEWINDEX)) == ((void*)0)) {
        L->top--;
        unfixedstack(L);
        setobj2t(L, oldval, val);
        ((Table *)h)->flags = 0;
        luaC_barriert(L, (Table*)h, val);
        return;
      }

    }
    else if (ttisrotable(t)) {
      luaG_runerror(L, "invalid write to ROM variable");
    }
    else if (ttisnil(tm = luaT_gettmbyobj(L, t, TM_NEWINDEX)))
      luaG_typeerror(L, t, "index");

    if (ttisfunction(tm) || ttislightfunction(tm)) {
      L->top--;
      unfixedstack(L);
      callTM(L, tm, t, key, val);
      return;
    }

    setobj(L, &temp, tm);
    t = &temp;
    setobj2s(L, L->top-1, t);
  }
  luaG_runerror(L, "loop in settable");
}
