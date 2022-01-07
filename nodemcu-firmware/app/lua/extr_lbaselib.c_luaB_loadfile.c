
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int load_aux (int *,int ) ;
 int luaL_loadfile (int *,char const*) ;
 int luaL_loadfsfile (int *,char const*) ;
 char* luaL_optstring (int *,int,int *) ;

__attribute__((used)) static int luaB_loadfile (lua_State *L) {
  const char *fname = luaL_optstring(L, 1, ((void*)0));



  return load_aux(L, luaL_loadfsfile(L, fname));

}
