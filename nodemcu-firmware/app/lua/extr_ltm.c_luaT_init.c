
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int * tmname; } ;


 TYPE_1__* G (int *) ;
 int TM_N ;
 int luaS_new (int *,char const* const) ;
 int stringfix (int ) ;

void luaT_init (lua_State *L) {
  static const char *const luaT_eventname[] = {
    "__index", "__newindex",
    "__gc", "__mode", "__eq",
    "__add", "__sub", "__mul", "__div", "__mod",
    "__pow", "__unm", "__len", "__lt", "__le",
    "__concat", "__call"
  };
  int i;
  for (i=0; i<TM_N; i++) {
    G(L)->tmname[i] = luaS_new(L, luaT_eventname[i]);
    stringfix(G(L)->tmname[i]);
  }
}
