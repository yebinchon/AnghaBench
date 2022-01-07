
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int system_restore () ;

__attribute__((used)) static int node_restore (lua_State *L)
{
  system_restore();
  return 0;
}
