
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int allowhook; int * errorJmp; scalar_t__ errfunc; int baseCcalls; int nCcalls; int base; TYPE_1__* ci; TYPE_1__* base_ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_7__ {int base; } ;


 int luaD_seterrorobj (TYPE_2__*,int,int ) ;
 int luaF_close (TYPE_2__*,int ) ;
 int restore_stack_limit (TYPE_2__*) ;

__attribute__((used)) static void resetstack(lua_State*L,int status){
L->ci=L->base_ci;
L->base=L->ci->base;
luaF_close(L,L->base);
luaD_seterrorobj(L,status,L->base);
L->nCcalls=L->baseCcalls;
L->allowhook=1;
restore_stack_limit(L);
L->errfunc=0;
L->errorJmp=((void*)0);
}
