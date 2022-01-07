
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {int base; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_15__ {size_t len; } ;
struct TYPE_13__ {int buff; } ;
typedef int StkId ;


 TYPE_11__* G (TYPE_1__*) ;
 int TM_CONCAT ;
 int call_binTM (TYPE_1__*,int,int,int,int ) ;
 int luaG_concaterror (TYPE_1__*,int,int) ;
 int luaG_runerror (TYPE_1__*,char*) ;
 int luaS_newlstr (TYPE_1__*,char*,size_t) ;
 char* luaZ_openspace (TYPE_1__*,int *,size_t) ;
 int memcpy (char*,int ,size_t) ;
 int setsvalue (TYPE_1__*,int,int ) ;
 int svalue (int) ;
 scalar_t__ tostring (TYPE_1__*,int) ;
 TYPE_2__* tsvalue (int) ;
 scalar_t__ ttisnumber (int) ;
 scalar_t__ ttisstring (int) ;

__attribute__((used)) static void luaV_concat(lua_State*L,int total,int last){
do{
StkId top=L->base+last+1;
int n=2;
if(!(ttisstring(top-2)||ttisnumber(top-2))||!tostring(L,top-1)){
if(!call_binTM(L,top-2,top-1,top-2,TM_CONCAT))
luaG_concaterror(L,top-2,top-1);
}else if(tsvalue(top-1)->len==0)
(void)tostring(L,top-2);
else{
size_t tl=tsvalue(top-1)->len;
char*buffer;
int i;
for(n=1;n<total&&tostring(L,top-n-1);n++){
size_t l=tsvalue(top-n-1)->len;
if(l>=((size_t)(~(size_t)0)-2)-tl)luaG_runerror(L,"string length overflow");
tl+=l;
}
buffer=luaZ_openspace(L,&G(L)->buff,tl);
tl=0;
for(i=n;i>0;i--){
size_t l=tsvalue(top-i)->len;
memcpy(buffer+tl,svalue(top-i),l);
tl+=l;
}
setsvalue(L,top-n,luaS_newlstr(L,buffer,tl));
}
total-=n-1;
last-=n-1;
}while(total>1);
}
