
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int egcmode; int memlimit; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;

void legc_set_mode(lua_State *L, int mode, int limit) {
   global_State *g = G(L);

   g->egcmode = mode;
   g->memlimit = limit;
}
