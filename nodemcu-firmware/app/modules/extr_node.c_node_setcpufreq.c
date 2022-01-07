
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int lua_State ;


 int BIT (int ) ;
 scalar_t__ CPU160MHZ ;
 scalar_t__ CPU80MHZ ;
 int REG_CLR_BIT (int,int ) ;
 int REG_SET_BIT (int,int ) ;
 scalar_t__ ets_get_cpu_frequency () ;
 int ets_update_cpu_frequency (scalar_t__) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;

__attribute__((used)) static int node_setcpufreq(lua_State* L)
{

  uint32_t new_freq = luaL_checkinteger(L, 1);
  if (new_freq == CPU160MHZ){
    REG_SET_BIT(0x3ff00014, BIT(0));
    ets_update_cpu_frequency(CPU160MHZ);
  } else {
    REG_CLR_BIT(0x3ff00014, BIT(0));
    ets_update_cpu_frequency(CPU80MHZ);
  }
  new_freq = ets_get_cpu_frequency();
  lua_pushinteger(L, new_freq);
  return 1;
}
