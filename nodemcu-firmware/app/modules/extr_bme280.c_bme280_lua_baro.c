
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int BME280_REGISTER_PRESS ;
 int bme280_compensate_P (int) ;
 int bme280_compensate_T (int) ;
 int lua_pushinteger (int *,int) ;
 int r8u_n (int ,int,int*) ;

__attribute__((used)) static int bme280_lua_baro(lua_State* L) {
 uint8_t buf[6];
 r8u_n(BME280_REGISTER_PRESS, 6, buf);
 uint32_t adc_T = (uint32_t)(((buf[3] << 16) | (buf[4] << 8) | buf[5]) >> 4);
 uint32_t T = bme280_compensate_T(adc_T);
 uint32_t adc_P = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
 if (adc_T == 0x80000 || adc_T == 0xfffff || adc_P ==0x80000 || adc_P == 0xfffff)
  return 0;
 lua_pushinteger(L, bme280_compensate_P(adc_P));
 lua_pushinteger(L, T);
 return 2;
}
