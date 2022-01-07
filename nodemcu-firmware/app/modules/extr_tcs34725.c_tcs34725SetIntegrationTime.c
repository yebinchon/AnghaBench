
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tcs34725IntegrationTime_t ;
typedef int lua_State ;


 int TCS34725_ATIME ;
 int _tcs34725Initialised ;
 int _tcs34725IntegrationTime ;
 int tcs34725Setup (int *) ;
 int tcs34725Write8 (int ,int ) ;

uint8_t tcs34725SetIntegrationTime(tcs34725IntegrationTime_t it, lua_State* L)
{
 if (!_tcs34725Initialised)
 {
  tcs34725Setup(L);
 }

 tcs34725Write8(TCS34725_ATIME, it);
 _tcs34725IntegrationTime = it;

 return 0;
}
