
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tcs34725Gain_t ;
typedef int lua_State ;


 int TCS34725_CONTROL ;
 int _tcs34725Gain ;
 int _tcs34725Initialised ;
 int luaL_error (int *,char*) ;
 int tcs34725Write8 (int ,int ) ;

uint8_t tcs34725SetGain(tcs34725Gain_t gain, lua_State* L)
{
 if (!_tcs34725Initialised)
 {
  return luaL_error(L, "TCS34725 not initialised.");
 }

 tcs34725Write8(TCS34725_CONTROL, gain);
 _tcs34725Gain = gain;

 return 0;
}
