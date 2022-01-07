
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int top; } ;
typedef TYPE_3__ lua_State ;
typedef int Table ;
struct TYPE_13__ {TYPE_1__* p; } ;
struct TYPE_15__ {TYPE_2__ l; } ;
struct TYPE_12__ {int* lineinfo; int sizelineinfo; } ;
typedef int TValue ;
typedef TYPE_4__ Closure ;


 int api_incr_top (TYPE_3__*) ;
 int * luaH_new (TYPE_3__*) ;
 int luaH_setint (TYPE_3__*,int *,int,int *) ;
 scalar_t__ noLuaClosure (TYPE_4__*) ;
 int setbvalue (int *,int) ;
 int sethvalue (TYPE_3__*,int ,int *) ;
 int setnilvalue (int ) ;

__attribute__((used)) static void collectvalidlines (lua_State *L, Closure *f) {
  if (noLuaClosure(f)) {
    setnilvalue(L->top);
    api_incr_top(L);
  }
  else {
    int i;
    TValue v;
    int *lineinfo = f->l.p->lineinfo;
    Table *t = luaH_new(L);
    sethvalue(L, L->top, t);
    api_incr_top(L);
    setbvalue(&v, 1);
    for (i = 0; i < f->l.p->sizelineinfo; i++)
      luaH_setint(L, t, lineinfo[i], &v);
  }
}
