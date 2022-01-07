
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int lua_State ;
typedef int int16_t ;


 int besttwoavg (int ,int ,int ) ;
 int getPosition (int *,int *) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int xpt2046_getPositionAvg( lua_State* L ) {

  uint16_t x1, y1, x2, y2, x3, y3;
  getPosition(&x1, &y1);
  getPosition(&x2, &y2);
  getPosition(&x3, &y3);


  int16_t x = besttwoavg(x1,x2,x3);
  int16_t y = besttwoavg(y1,y2,y3);

  lua_pushinteger( L, x);
  lua_pushinteger( L, y);
  return 2;
}
