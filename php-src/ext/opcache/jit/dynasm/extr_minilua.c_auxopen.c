
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_CFunction ;


 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static void auxopen(lua_State*L,const char*name,
lua_CFunction f,lua_CFunction u){
lua_pushcfunction(L,u);
lua_pushcclosure(L,f,1);
lua_setfield(L,-2,name);
}
