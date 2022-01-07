
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int nodemcu_mdns_close () ;

__attribute__((used)) static int mdns_close(lua_State *L)
{
  nodemcu_mdns_close();
  return 0;
}
