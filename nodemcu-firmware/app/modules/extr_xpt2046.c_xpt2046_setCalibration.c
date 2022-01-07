
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int int32_t ;


 int luaL_checkinteger (int *,int) ;
 int setCalibration (int ,int ,int ,int ) ;

__attribute__((used)) static int xpt2046_setCalibration( lua_State* L ) {
  int32_t a = luaL_checkinteger( L, 1 );
  int32_t b = luaL_checkinteger( L, 2 );
  int32_t c = luaL_checkinteger( L, 3 );
  int32_t d = luaL_checkinteger( L, 4 );
  setCalibration(a,b,c,d);
  return 0;
}
