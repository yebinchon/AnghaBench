
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int SI7021_CMD_READ_RHT_REG ;
 int SI7021_CMD_RESET ;
 int luaL_error (int *,char*) ;
 int os_delay_us (int) ;
 int read_reg (int ,int*,int) ;
 int write_byte (int ) ;

__attribute__((used)) static int si7021_lua_setup(lua_State* L) {

 write_byte(SI7021_CMD_RESET);
 os_delay_us(50000);


 uint8_t buf_r[1];
 read_reg(SI7021_CMD_READ_RHT_REG, buf_r, 1);
 if (buf_r[0] != 0x3A)
  return luaL_error(L, "found no device");

 return 0;
}
