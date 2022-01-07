
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int api_incr_top (TYPE_1__*) ;
 int luaC_checkGC (TYPE_1__*) ;
 int luaS_newlstr (TYPE_1__*,char const*,size_t) ;
 int setsvalue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void lua_pushlstring(lua_State*L,const char*s,size_t len){
luaC_checkGC(L);
setsvalue(L,L->top,luaS_newlstr(L,s,len));
api_incr_top(L);
}
