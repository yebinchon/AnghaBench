
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_12__ {void* env; } ;
struct TYPE_15__ {TYPE_1__ c; } ;
struct TYPE_14__ {void* env; } ;
typedef int StkId ;


 int api_checknelems (TYPE_2__*,int) ;
 int api_checkvalidindex (TYPE_2__*,int ) ;
 TYPE_9__* clvalue (int ) ;
 int gcvalue (int ) ;
 int gt (int ) ;
 void* hvalue (scalar_t__) ;
 int index2adr (TYPE_2__*,int) ;
 int luaC_objbarrier (TYPE_2__*,int ,void*) ;
 int luai_apicheck (TYPE_2__*,int ) ;
 int sethvalue (TYPE_2__*,int ,void*) ;
 int thvalue (int ) ;
 int ttistable (scalar_t__) ;
 int ttype (int ) ;
 TYPE_3__* uvalue (int ) ;

__attribute__((used)) static int lua_setfenv(lua_State*L,int idx){
StkId o;
int res=1;
api_checknelems(L,1);
o=index2adr(L,idx);
api_checkvalidindex(L,o);
luai_apicheck(L,ttistable(L->top-1));
switch(ttype(o)){
case 6:
clvalue(o)->c.env=hvalue(L->top-1);
break;
case 7:
uvalue(o)->env=hvalue(L->top-1);
break;
case 8:
sethvalue(L,gt(thvalue(o)),hvalue(L->top-1));
break;
default:
res=0;
break;
}
if(res)luaC_objbarrier(L,gcvalue(o),hvalue(L->top-1));
L->top--;
return res;
}
