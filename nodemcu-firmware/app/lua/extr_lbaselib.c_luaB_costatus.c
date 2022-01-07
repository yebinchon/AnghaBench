
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 size_t costatus (int *,int *) ;
 int luaL_argcheck (int *,int *,int,char*) ;
 int lua_pushstring (int *,int ) ;
 int * lua_tothread (int *,int) ;
 int * statnames ;

__attribute__((used)) static int luaB_costatus (lua_State *L) {
  lua_State *co = lua_tothread(L, 1);
  luaL_argcheck(L, co, 1, "coroutine expected");
  lua_pushstring(L, statnames[costatus(L, co)]);
  return 1;
}
