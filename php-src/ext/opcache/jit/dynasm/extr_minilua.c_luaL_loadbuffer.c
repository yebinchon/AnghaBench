
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char const* s; size_t size; } ;
typedef TYPE_1__ LoadS ;


 int getS ;
 int lua_load (int *,int ,TYPE_1__*,char const*) ;

__attribute__((used)) static int luaL_loadbuffer(lua_State*L,const char*buff,size_t size,
const char*name){
LoadS ls;
ls.s=buff;
ls.size=size;
return lua_load(L,getS,&ls,name);
}
