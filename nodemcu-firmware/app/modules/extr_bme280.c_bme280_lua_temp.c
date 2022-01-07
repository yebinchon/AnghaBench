
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int BME280_REGISTER_TEMP ;
 int bme280_compensate_T (int) ;
 int bme280_t_fine ;
 int lua_pushinteger (int *,int ) ;
 int r8u_n (int ,int,int*) ;

__attribute__((used)) static int bme280_lua_temp(lua_State* L) {
 uint8_t buf[3];
 r8u_n(BME280_REGISTER_TEMP, 3, buf);
 uint32_t adc_T = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
 if (adc_T == 0x80000 || adc_T == 0xfffff)
  return 0;
 lua_pushinteger(L, bme280_compensate_T(adc_T));
 lua_pushinteger(L, bme280_t_fine);
 return 2;
}
