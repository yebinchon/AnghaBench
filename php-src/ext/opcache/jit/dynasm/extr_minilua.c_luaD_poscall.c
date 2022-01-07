
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ top; int savedpc; int base; int ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_6__ {scalar_t__ func; int nresults; int savedpc; int base; } ;
typedef scalar_t__ StkId ;
typedef TYPE_2__ CallInfo ;


 int setnilvalue (int ) ;
 int setobj (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int luaD_poscall(lua_State*L,StkId firstResult){
StkId res;
int wanted,i;
CallInfo*ci;
ci=L->ci--;
res=ci->func;
wanted=ci->nresults;
L->base=(ci-1)->base;
L->savedpc=(ci-1)->savedpc;
for(i=wanted;i!=0&&firstResult<L->top;i--)
setobj(L,res++,firstResult++);
while(i-->0)
setnilvalue(res++);
L->top=res;
return(wanted-(-1));
}
