
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int luaL_argcheck (int *,int,int,char*) ;
 unsigned int luaL_checkinteger (int *,int) ;
 int system_phy_set_max_tpw (int ) ;

__attribute__((used)) static int wifi_setmaxtxpower( lua_State* L )
{
  unsigned power;
  power = luaL_checkinteger( L, 1 );
  luaL_argcheck(L, (power > 0 && power < 83), 1, "tx power out of range (0->82)");

  system_phy_set_max_tpw( (uint8_t) power);
  return 1;
}
