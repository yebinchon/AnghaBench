
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushinteger (int *,int ) ;
 int system_get_vdd33 () ;

__attribute__((used)) static int adc_readvdd33( lua_State* L )
{
  lua_pushinteger(L, system_get_vdd33 ());
  return 1;
}
