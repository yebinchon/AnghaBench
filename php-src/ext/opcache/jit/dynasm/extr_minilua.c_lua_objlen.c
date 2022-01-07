
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {size_t len; } ;
struct TYPE_3__ {size_t len; } ;
typedef int StkId ;


 int hvalue (int ) ;
 int index2adr (int *,int) ;
 size_t luaH_getn (int ) ;
 int luaV_tostring (int *,int ) ;
 TYPE_2__* tsvalue (int ) ;
 int ttype (int ) ;
 TYPE_1__* uvalue (int ) ;

__attribute__((used)) static size_t lua_objlen(lua_State*L,int idx){
StkId o=index2adr(L,idx);
switch(ttype(o)){
case 4:return tsvalue(o)->len;
case 7:return uvalue(o)->len;
case 5:return luaH_getn(hvalue(o));
case 3:{
size_t l;
l=(luaV_tostring(L,o)?tsvalue(o)->len:0);
return l;
}
default:return 0;
}
}
