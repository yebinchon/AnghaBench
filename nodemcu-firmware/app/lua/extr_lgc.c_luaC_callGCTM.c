
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {scalar_t__ tmudata; } ;


 TYPE_1__* G (int *) ;
 int GCTM (int *) ;

void luaC_callGCTM (lua_State *L) {
  while (G(L)->tmudata)
    GCTM(L);
}
