
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int * fnames ;
 int luaL_error (int *,char*,int ) ;
 int lua_rawgeti (int *,int,int) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static FILE*getiofile(lua_State*L,int findex){
FILE*f;
lua_rawgeti(L,(-10001),findex);
f=*(FILE**)lua_touserdata(L,-1);
if(f==((void*)0))
luaL_error(L,"standard %s file is closed",fnames[findex-1]);
return f;
}
