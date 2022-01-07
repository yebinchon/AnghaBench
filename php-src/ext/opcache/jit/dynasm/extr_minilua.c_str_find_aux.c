
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
typedef int lua_State ;
struct TYPE_4__ {char const* src_init; char const* src_end; scalar_t__ level; int * L; } ;
typedef TYPE_1__ MatchState ;


 char* lmemfind (char const*,size_t,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_toboolean (int *,int) ;
 char* match (TYPE_1__*,char const*,char const*) ;
 int posrelat (int ,size_t) ;
 int push_captures (TYPE_1__*,char const*,char const*) ;
 int * strpbrk (char const*,char*) ;

__attribute__((used)) static int str_find_aux(lua_State*L,int find){
size_t l1,l2;
const char*s=luaL_checklstring(L,1,&l1);
const char*p=luaL_checklstring(L,2,&l2);
ptrdiff_t init=posrelat(luaL_optinteger(L,3,1),l1)-1;
if(init<0)init=0;
else if((size_t)(init)>l1)init=(ptrdiff_t)l1;
if(find&&(lua_toboolean(L,4)||
strpbrk(p,"^$*+?.([%-")==((void*)0))){
const char*s2=lmemfind(s+init,l1-init,p,l2);
if(s2){
lua_pushinteger(L,s2-s+1);
lua_pushinteger(L,s2-s+l2);
return 2;
}
}
else{
MatchState ms;
int anchor=(*p=='^')?(p++,1):0;
const char*s1=s+init;
ms.L=L;
ms.src_init=s;
ms.src_end=s+l1;
do{
const char*res;
ms.level=0;
if((res=match(&ms,s1,p))!=((void*)0)){
if(find){
lua_pushinteger(L,s1-s+1);
lua_pushinteger(L,res-s);
return push_captures(&ms,((void*)0),0)+2;
}
else
return push_captures(&ms,s1,res);
}
}while(s1++<ms.src_end&&!anchor);
}
lua_pushnil(L);
return 1;
}
