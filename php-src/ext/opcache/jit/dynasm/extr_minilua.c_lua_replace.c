
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ ci; scalar_t__ base_ci; scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_15__ {int env; } ;
struct TYPE_17__ {TYPE_1__ c; } ;
typedef int StkId ;
typedef TYPE_3__ Closure ;


 int api_checknelems (TYPE_2__*,int) ;
 int api_checkvalidindex (TYPE_2__*,int ) ;
 TYPE_3__* curr_func (TYPE_2__*) ;
 int hvalue (scalar_t__) ;
 int index2adr (TYPE_2__*,int) ;
 int luaC_barrier (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int luaG_runerror (TYPE_2__*,char*) ;
 int luai_apicheck (TYPE_2__*,int ) ;
 int setobj (TYPE_2__*,int ,scalar_t__) ;
 int ttistable (scalar_t__) ;

__attribute__((used)) static void lua_replace(lua_State*L,int idx){
StkId o;
if(idx==(-10001)&&L->ci==L->base_ci)
luaG_runerror(L,"no calling environment");
api_checknelems(L,1);
o=index2adr(L,idx);
api_checkvalidindex(L,o);
if(idx==(-10001)){
Closure*func=curr_func(L);
luai_apicheck(L,ttistable(L->top-1));
func->c.env=hvalue(L->top-1);
luaC_barrier(L,func,L->top-1);
}
else{
setobj(L,o,L->top-1);
if(idx<(-10002))
luaC_barrier(L,curr_func(L),L->top-1);
}
L->top--;
}
