
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_CFunction ;


 int ERRFUNC ;
 int ERRLIB ;
 void* ll_load (int *,char const*) ;
 void** ll_register (int *,char const*) ;
 int * ll_sym (int *,void*,char const*) ;
 int lua_pushcfunction (int *,int *) ;

__attribute__((used)) static int ll_loadfunc (lua_State *L, const char *path, const char *sym) {
  void **reg = ll_register(L, path);
  if (*reg == ((void*)0)) *reg = ll_load(L, path);
  if (*reg == ((void*)0))
    return ERRLIB;
  else {
    lua_CFunction f = ll_sym(L, *reg, sym);
    if (f == ((void*)0))
      return ERRFUNC;
    lua_pushcfunction(L, f);
    return 0;
  }
}
