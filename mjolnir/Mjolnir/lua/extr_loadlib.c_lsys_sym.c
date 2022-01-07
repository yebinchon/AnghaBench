
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_CFunction ;


 int DLMSG ;
 int lua_pushliteral (int *,int ) ;

__attribute__((used)) static lua_CFunction lsys_sym (lua_State *L, void *lib, const char *sym) {
  (void)(lib); (void)(sym);
  lua_pushliteral(L, DLMSG);
  return ((void*)0);
}
