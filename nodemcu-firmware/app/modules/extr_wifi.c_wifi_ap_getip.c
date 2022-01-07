
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int SOFTAP_IF ;
 int wifi_getip (int *,int ) ;

__attribute__((used)) static int wifi_ap_getip( lua_State* L ){
  return wifi_getip(L, SOFTAP_IF);
}
