
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Number ;


 int lua_isnumber (int *,int) ;
 scalar_t__ lua_tonumber (int *,int) ;
 int tag_error (int *,int,int) ;

__attribute__((used)) static lua_Number luaL_checknumber(lua_State*L,int narg){
lua_Number d=lua_tonumber(L,narg);
if(d==0&&!lua_isnumber(L,narg))
tag_error(L,narg,3);
return d;
}
