
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int StkId ;


 int api_checknelems (TYPE_1__*,int) ;
 int api_checkvalidindex (TYPE_1__*,int ) ;
 int index2adr (TYPE_1__*,int) ;
 int luaV_settable (TYPE_1__*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void lua_settable(lua_State*L,int idx){
StkId t;
api_checknelems(L,2);
t=index2adr(L,idx);
api_checkvalidindex(L,t);
luaV_settable(L,t,L->top-2,L->top-1);
L->top-=2;
}
