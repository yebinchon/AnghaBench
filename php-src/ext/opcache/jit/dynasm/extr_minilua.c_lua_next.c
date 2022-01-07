
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int api_incr_top (TYPE_1__*) ;
 int hvalue (int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaH_next (TYPE_1__*,int ,scalar_t__) ;
 int luai_apicheck (TYPE_1__*,int ) ;
 int ttistable (int ) ;

__attribute__((used)) static int lua_next(lua_State*L,int idx){
StkId t;
int more;
t=index2adr(L,idx);
luai_apicheck(L,ttistable(t));
more=luaH_next(L,hvalue(t),L->top-1);
if(more){
api_incr_top(L);
}
else
L->top-=1;
return more;
}
