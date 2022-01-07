
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size_ci; int stacksize; scalar_t__ stack; scalar_t__ base_ci; scalar_t__ ci; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ StkId ;


 int cast_int (scalar_t__) ;
 int condhardstacktests (int ) ;
 int luaD_reallocCI (TYPE_1__*,int) ;
 int luaD_reallocstack (TYPE_1__*,int) ;

__attribute__((used)) static void checkstacksizes(lua_State*L,StkId max){
int ci_used=cast_int(L->ci-L->base_ci);
int s_used=cast_int(max-L->stack);
if(L->size_ci>20000)
return;
if(4*ci_used<L->size_ci&&2*8<L->size_ci)
luaD_reallocCI(L,L->size_ci/2);
condhardstacktests(luaD_reallocCI(L,ci_used+1));
if(4*s_used<L->stacksize&&
2*((2*20)+5)<L->stacksize)
luaD_reallocstack(L,L->stacksize/2);
condhardstacktests(luaD_reallocstack(L,s_used));
}
