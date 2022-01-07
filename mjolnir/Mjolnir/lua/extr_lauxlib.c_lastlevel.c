
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 scalar_t__ lua_getstack (int *,int,int *) ;

__attribute__((used)) static int lastlevel (lua_State *L) {
  lua_Debug ar;
  int li = 1, le = 1;

  while (lua_getstack(L, le, &ar)) { li = le; le *= 2; }

  while (li < le) {
    int m = (li + le)/2;
    if (lua_getstack(L, m, &ar)) li = m + 1;
    else le = m;
  }
  return le - 1;
}
