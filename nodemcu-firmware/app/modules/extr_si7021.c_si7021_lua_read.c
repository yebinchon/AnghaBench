
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef double uint16_t ;
typedef int lua_State ;


 int SI7021_CMD_MEASURE_RH_HOLD ;
 int SI7021_CMD_READ_PREV_TEMP ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnumber (int *,double) ;
 int read_reg (int ,int*,int) ;
 int si7021_crc8 (int ,int*,int) ;

__attribute__((used)) static int si7021_lua_read(lua_State* L) {

 uint8_t buf_h[3];
 read_reg(SI7021_CMD_MEASURE_RH_HOLD, buf_h, 3);
 if (buf_h[2] != si7021_crc8(0, buf_h, 2))
  return luaL_error(L, "crc error");
 double hum = (uint16_t)((buf_h[0] << 8) | buf_h[1]);
 hum = ((hum * 125) / 65536 - 6);
 int humdec = (int)((hum - (int)hum) * 1000);

 uint8_t buf_t[2];
 read_reg(SI7021_CMD_READ_PREV_TEMP, buf_t, 2);
 double temp = (uint16_t)((buf_t[0] << 8) | buf_t[1]);
 temp = ((temp * 175.72) / 65536 - 46.85);
 int tempdec = (int)((temp - (int)temp) * 1000);

 lua_pushnumber(L, hum);
 lua_pushnumber(L, temp);
 lua_pushinteger(L, humdec);
 lua_pushinteger(L, tempdec);

 return 4;
}
