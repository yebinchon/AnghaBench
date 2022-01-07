
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_isnoneornil (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_toboolean (int *,int) ;
 int manual ;

__attribute__((used)) static int enduser_setup_manual(lua_State *L)
{
  if (!lua_isnoneornil (L, 1))
  {
    manual = lua_toboolean (L, 1);
  }
  lua_pushboolean (L, manual);
  return 1;
}
