
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int TCS34725_ENABLE ;
 int TCS34725_ENABLE_AEN ;
 int TCS34725_ENABLE_PON ;
 int _tcs34725Initialised ;
 int tcs34725Read8 (int ) ;
 int tcs34725Write8 (int ,int) ;

uint8_t tcs34725Disable(lua_State* L)
{

 uint8_t reg = 0;
 reg = tcs34725Read8(TCS34725_ENABLE);
 tcs34725Write8(TCS34725_ENABLE, reg & ~(TCS34725_ENABLE_PON | TCS34725_ENABLE_AEN));
 _tcs34725Initialised = 0;
 return 0;
}
