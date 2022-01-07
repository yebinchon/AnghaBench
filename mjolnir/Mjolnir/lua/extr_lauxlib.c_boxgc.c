
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int resizebox (int *,int,int ) ;

__attribute__((used)) static int boxgc (lua_State *L) {
  resizebox(L, 1, 0);
  return 0;
}
