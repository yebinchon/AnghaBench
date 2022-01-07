
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int estimate; int totalbytes; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int node_egc_meminfo(lua_State *L) {
  global_State *g = G(L);
  lua_pushinteger(L, g->totalbytes);
  lua_pushinteger(L, g->estimate);
  return 2;
}
