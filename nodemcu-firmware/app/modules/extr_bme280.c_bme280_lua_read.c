
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;
typedef int int32_t ;


 int BME280_REGISTER_PRESS ;
 int bme280_compensate_H (int) ;
 int bme280_compensate_P (int) ;
 int bme280_compensate_T (int) ;
 int bme280_isbme ;
 double bme280_qfe2qnh (int,int) ;
 int luaL_checkinteger (int *,int) ;
 int lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int r8u_n (int ,int,int*) ;

__attribute__((used)) static int bme280_lua_read(lua_State* L) {
 uint8_t buf[8];
 uint32_t qfe;
 uint8_t calc_qnh = lua_isnumber(L, 1);

 r8u_n(BME280_REGISTER_PRESS, 8, buf);


 uint32_t adc_T = (uint32_t)(((buf[3] << 16) | (buf[4] << 8) | buf[5]) >> 4);
 if (adc_T == 0x80000 || adc_T == 0xfffff)
  return 0;
 lua_pushinteger(L, bme280_compensate_T(adc_T));

 uint32_t adc_P = (uint32_t)(((buf[0] << 16) | (buf[1] << 8) | buf[2]) >> 4);
 if (adc_P ==0x80000 || adc_P == 0xfffff) {
  lua_pushnil(L);
  calc_qnh = 0;
 } else {
  qfe = bme280_compensate_P(adc_P);
  lua_pushinteger(L, qfe);
 }

 uint32_t adc_H = (uint32_t)((buf[6] << 8) | buf[7]);
 if (!bme280_isbme || adc_H == 0x8000 || adc_H == 0xffff)
  lua_pushnil(L);
 else
  lua_pushinteger(L, bme280_compensate_H(adc_H));

 if (calc_qnh) {
  int32_t h = luaL_checkinteger(L, 1);
  double qnh = bme280_qfe2qnh(qfe, h);
  lua_pushinteger(L, (int32_t)(qnh + 0.5));
  return 4;
 }
 return 3;
}
