
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int top; int base; TYPE_1__* ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_5__ {scalar_t__ top; } ;


 int luaD_checkstack (TYPE_2__*,int) ;

__attribute__((used)) static int lua_checkstack(lua_State*L,int size){
int res=1;
if(size>8000||(L->top-L->base+size)>8000)
res=0;
else if(size>0){
luaD_checkstack(L,size);
if(L->ci->top<L->top+size)
L->ci->top=L->top+size;
}
return res;
}
