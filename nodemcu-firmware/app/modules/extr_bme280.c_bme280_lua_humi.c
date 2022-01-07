
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int BME280_REGISTER_TEMP ;
 int bme280_compensate_H (int) ;
 int bme280_compensate_T (int) ;
 int bme280_isbme ;
 int lua_pushinteger (int *,int) ;
 int r8u_n (int ,int,int*) ;

__attribute__((used)) static int bme280_lua_humi(lua_State* L) {
 if (!bme280_isbme) return 0;
 uint8_t buf[5];
 r8u_n(BME280_REGISTER_TEMP, 5, buf);

 uint32_t adc_T = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
 uint32_t T = bme280_compensate_T(adc_T);
 uint32_t adc_H = (uint32_t)((buf[3] << 8) | buf[4]);
 if (adc_T == 0x80000 || adc_T == 0xfffff || adc_H == 0x8000 || adc_H == 0xffff)
  return 0;
 lua_pushinteger(L, bme280_compensate_H(adc_H));
 lua_pushinteger(L, T);
 return 2;
}
