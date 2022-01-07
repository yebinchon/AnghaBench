
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_23__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_30__ {scalar_t__ top; scalar_t__ base; scalar_t__ stack_last; int hookmask; int savedpc; TYPE_1__* ci; } ;
typedef TYPE_3__ lua_State ;
typedef int (* lua_CFunction ) (TYPE_3__*) ;
struct TYPE_33__ {scalar_t__ func; scalar_t__ base; scalar_t__ top; int nresults; scalar_t__ tailcalls; } ;
struct TYPE_32__ {TYPE_5__* p; int isC; } ;
struct TYPE_31__ {scalar_t__ maxstacksize; scalar_t__ numparams; int code; int is_vararg; } ;
struct TYPE_29__ {int (* f ) (TYPE_3__*) ;} ;
struct TYPE_28__ {TYPE_6__ l; } ;
struct TYPE_27__ {TYPE_2__ c; } ;
struct TYPE_26__ {int savedpc; } ;
typedef scalar_t__ StkId ;
typedef TYPE_5__ Proto ;
typedef TYPE_6__ LClosure ;
typedef TYPE_7__ CallInfo ;


 int LUA_HOOKCALL ;
 int LUA_MASKCALL ;
 scalar_t__ LUA_MINSTACK ;
 int PCRC ;
 int PCRLUA ;
 int PCRYIELD ;
 scalar_t__ adjust_varargs (TYPE_3__*,TYPE_5__*,int) ;
 int cast_int (scalar_t__) ;
 TYPE_23__* clvalue (scalar_t__) ;
 TYPE_21__* curr_func (TYPE_3__*) ;
 scalar_t__ fvalue (scalar_t__) ;
 TYPE_7__* inc_ci (TYPE_3__*) ;
 int luaD_callhook (TYPE_3__*,int ,int) ;
 int luaD_checkstack (TYPE_3__*,scalar_t__) ;
 int luaD_poscall (TYPE_3__*,scalar_t__) ;
 int lua_assert (int) ;
 int lua_lock (TYPE_3__*) ;
 int lua_unlock (TYPE_3__*) ;
 void* restorestack (TYPE_3__*,int ) ;
 int savestack (TYPE_3__*,scalar_t__) ;
 int setnilvalue (scalar_t__) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 scalar_t__ tryfuncTM (TYPE_3__*,scalar_t__) ;
 scalar_t__ ttisfunction (scalar_t__) ;
 int ttislightfunction (scalar_t__) ;

int luaD_precall (lua_State *L, StkId func, int nresults) {
  ptrdiff_t funcr;
  LClosure *cl = ((void*)0);
  if (!ttisfunction(func) && !ttislightfunction(func))
    func = tryfuncTM(L, func);
  funcr = savestack(L, func);
  if (ttisfunction(func))
    cl = &clvalue(func)->l;
  L->ci->savedpc = L->savedpc;
  if (cl && !cl->isC) {
    CallInfo *ci;
    StkId st, base;
    Proto *p = cl->p;
    luaD_checkstack(L, p->maxstacksize);
    func = restorestack(L, funcr);
    if (!p->is_vararg) {
      base = func + 1;
      if (L->top > base + p->numparams)
        L->top = base + p->numparams;
    }
    else {
      int nargs = cast_int(L->top - func) - 1;
      base = adjust_varargs(L, p, nargs);
      func = restorestack(L, funcr);
    }
    ci = inc_ci(L);
    ci->func = func;
    L->base = ci->base = base;
    ci->top = L->base + p->maxstacksize;
    lua_assert(ci->top <= L->stack_last);
    L->savedpc = p->code;
    ci->tailcalls = 0;
    ci->nresults = nresults;
    for (st = L->top; st < ci->top; st++)
      setnilvalue(st);
    L->top = ci->top;
    if (L->hookmask & LUA_MASKCALL) {
      L->savedpc++;
      luaD_callhook(L, LUA_HOOKCALL, -1);
      L->savedpc--;
    }
    return PCRLUA;
  }
  else {
    CallInfo *ci;
    int n;
    luaD_checkstack(L, LUA_MINSTACK);
    ci = inc_ci(L);
    ci->func = restorestack(L, funcr);
    L->base = ci->base = ci->func + 1;
    ci->top = L->top + LUA_MINSTACK;
    lua_assert(ci->top <= L->stack_last);
    ci->nresults = nresults;
    if (L->hookmask & LUA_MASKCALL)
      luaD_callhook(L, LUA_HOOKCALL, -1);
    lua_unlock(L);
    if (ttisfunction(ci->func))
      n = (*curr_func(L)->c.f)(L);
    else
      n = ((lua_CFunction)fvalue(ci->func))(L);
    lua_lock(L);
    if (n < 0)
      return PCRYIELD;
    else {
      luaD_poscall(L, L->top - n);
      return PCRC;
    }
  }
}
