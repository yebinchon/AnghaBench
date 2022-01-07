
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; scalar_t__ base; } ;
typedef TYPE_1__ lua_State ;


 int api_checknelems (TYPE_1__*,int) ;
 int api_incr_top (TYPE_1__*) ;
 scalar_t__ cast_int (scalar_t__) ;
 int luaC_checkGC (TYPE_1__*) ;
 int luaS_newlstr (TYPE_1__*,char*,int ) ;
 int luaV_concat (TYPE_1__*,int,scalar_t__) ;
 int setsvalue (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void lua_concat(lua_State*L,int n){
api_checknelems(L,n);
if(n>=2){
luaC_checkGC(L);
luaV_concat(L,n,cast_int(L->top-L->base)-1);
L->top-=(n-1);
}
else if(n==0){
setsvalue(L,L->top,luaS_newlstr(L,"",0));
api_incr_top(L);
}
}
