
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ flags; int metatable; } ;
typedef TYPE_1__ Table ;
typedef int const TValue ;
typedef int const* StkId ;


 int TM_NEWINDEX ;
 int callTM (int *,int const*,int const*,int const*,int const*) ;
 int const* fasttm (int *,int ,int ) ;
 TYPE_1__* hvalue (int const*) ;
 int luaC_barriert (int *,TYPE_1__*,int const*) ;
 int luaG_runerror (int *,char*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int const* luaH_set (int *,TYPE_1__*,int const*) ;
 int const* luaT_gettmbyobj (int *,int const*,int ) ;
 int setobj (int *,int const*,int const*) ;
 scalar_t__ ttisfunction (int const*) ;
 scalar_t__ ttisnil (int const*) ;
 scalar_t__ ttistable (int const*) ;

__attribute__((used)) static void luaV_settable(lua_State*L,const TValue*t,TValue*key,StkId val){
int loop;
TValue temp;
for(loop=0;loop<100;loop++){
const TValue*tm;
if(ttistable(t)){
Table*h=hvalue(t);
TValue*oldval=luaH_set(L,h,key);
if(!ttisnil(oldval)||
(tm=fasttm(L,h->metatable,TM_NEWINDEX))==((void*)0)){
setobj(L,oldval,val);
h->flags=0;
luaC_barriert(L,h,val);
return;
}
}
else if(ttisnil(tm=luaT_gettmbyobj(L,t,TM_NEWINDEX)))
luaG_typeerror(L,t,"index");
if(ttisfunction(tm)){
callTM(L,tm,t,key,val);
return;
}
setobj(L,&temp,tm);
t=&temp;
}
luaG_runerror(L,"loop in settable");
}
