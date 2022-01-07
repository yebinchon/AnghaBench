
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int STATION_IF ;
 int wifi_setmac (int *,int ) ;

__attribute__((used)) static int wifi_station_setmac( lua_State* L ){
  return wifi_setmac(L, STATION_IF);
}
