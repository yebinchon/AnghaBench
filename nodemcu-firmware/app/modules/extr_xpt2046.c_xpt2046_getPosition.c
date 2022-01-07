
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int lua_State ;


 int getPosition (int *,int *) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int xpt2046_getPosition( lua_State* L ) {
  uint16_t x, y;
  getPosition(&x, &y);
  lua_pushinteger( L, x);
  lua_pushinteger( L, y);
  return 2;
}
