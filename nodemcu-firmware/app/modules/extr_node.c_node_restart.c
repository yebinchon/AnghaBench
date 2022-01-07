
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int system_restart () ;

__attribute__((used)) static int node_restart( lua_State* L )
{
  system_restart();
  return 0;
}
