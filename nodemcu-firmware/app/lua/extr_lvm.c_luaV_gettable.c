
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {struct TYPE_5__* metatable; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int StkId ;


 int MAXTAGLOOP ;
 int TM_INDEX ;
 int callTMres (int *,int ,int const*,int const*,int *) ;
 int * fasttm (int *,TYPE_1__*,int ) ;
 TYPE_1__* hvalue (int const*) ;
 int luaG_runerror (int *,char*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int * luaH_get (TYPE_1__*,int *) ;
 int * luaH_get_ro (void*,int *) ;
 scalar_t__ luaR_getmeta (void*) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 void* rvalue (int const*) ;
 int setobj (int *,int *,int const*) ;
 int setobj2s (int *,int ,int const*) ;
 scalar_t__ ttisfunction (int const*) ;
 scalar_t__ ttislightfunction (int const*) ;
 scalar_t__ ttisnil (int const*) ;
 scalar_t__ ttisrotable (int const*) ;
 scalar_t__ ttistable (int const*) ;

void luaV_gettable (lua_State *L, const TValue *t, TValue *key, StkId val) {
  int loop;
  TValue temp;
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    const TValue *tm;

    if (ttistable(t)) {
      Table *h = hvalue(t);
      const TValue *res = luaH_get(h, key);
      if (!ttisnil(res) ||
          (tm = fasttm(L, h->metatable, TM_INDEX)) == ((void*)0)) {
        setobj2s(L, val, res);
        return;
      }

    } else if (ttisrotable(t)) {
      void *h = rvalue(t);
      const TValue *res = luaH_get_ro(h, key);
      if (!ttisnil(res) ||
          (tm = fasttm(L, (Table*)luaR_getmeta(h), TM_INDEX)) == ((void*)0)) {
        setobj2s(L, val, res);
        return;
      }

    }
    else if (ttisnil(tm = luaT_gettmbyobj(L, t, TM_INDEX)))
        luaG_typeerror(L, t, "index");

    if (ttisfunction(tm) || ttislightfunction(tm)) {
      callTMres(L, val, tm, t, key);
      return;
    }

    setobj(L, &temp, tm);
    t = &temp;
  }
  luaG_runerror(L, "loop in gettable");
}
