
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_KContext ;


 int lua_gettop (int *) ;

__attribute__((used)) static int dofilecont (lua_State *L, int d1, lua_KContext d2) {
  (void)d1; (void)d2;
  return lua_gettop(L) - 1;
}
