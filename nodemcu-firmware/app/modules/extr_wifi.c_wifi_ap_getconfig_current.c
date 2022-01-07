
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int wifi_ap_getconfig (int *,int) ;

__attribute__((used)) static int wifi_ap_getconfig_current(lua_State *L)
{
  return wifi_ap_getconfig(L, 0);
}
