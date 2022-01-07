
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int SI7021_CMD_FIRM_REV ;
 int lua_pushinteger (int *,int ) ;
 int read_serial (int ,int *,int) ;

__attribute__((used)) static int si7021_lua_firmware(lua_State* L) {

 uint8_t firmware;
 uint8_t buf_f[1];
 read_serial(SI7021_CMD_FIRM_REV, buf_f, 1);
 firmware = buf_f[0];

 lua_pushinteger(L, firmware);

 return 1;
}
