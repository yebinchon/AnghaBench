
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int Table ;
struct TYPE_18__ {int numparams; int is_vararg; } ;
typedef int StkId ;
typedef TYPE_2__ Proto ;


 int VARARG_HASARG ;
 int VARARG_NEEDSARG ;
 int cast_num (int) ;
 int fixedstack (TYPE_1__*) ;
 int incr_top (TYPE_1__*) ;
 int iswhite (int ) ;
 int luaC_checkGC (TYPE_1__*) ;
 int * luaH_new (TYPE_1__*,int,int) ;
 int luaH_setnum (TYPE_1__*,int *,int) ;
 int luaH_setstr (TYPE_1__*,int *,int ) ;
 int luaS_newliteral (TYPE_1__*,char*) ;
 int lua_assert (int) ;
 int obj2gco (int *) ;
 int sethvalue (TYPE_1__*,int ,int *) ;
 int sethvalue2s (TYPE_1__*,int,int *) ;
 int setnilvalue (int) ;
 int setnvalue (int ,int ) ;
 int setobj2n (TYPE_1__*,int ,int) ;
 int setobjs2s (TYPE_1__*,int ,int) ;
 int unfixedstack (TYPE_1__*) ;

__attribute__((used)) static StkId adjust_varargs (lua_State *L, Proto *p, int actual) {
  int i;
  int nfixargs = p->numparams;



  StkId base, fixed;
  for (; actual < nfixargs; ++actual)
    setnilvalue(L->top++);
  fixed = L->top - actual;
  base = L->top;
  for (i=0; i<nfixargs; i++) {
    setobjs2s(L, L->top++, fixed+i);
    setnilvalue(fixed+i);
  }







  return base;
}
