
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int DLMSG ;
 int lua_pushliteral (int *,int ) ;

__attribute__((used)) static void * ll_load (lua_State *L, const char *path) {
  (void)path;
  lua_pushliteral(L, DLMSG);
  return ((void*)0);
}
