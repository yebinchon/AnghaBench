
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int lua_State ;


 int MCP4725_I2C_ADDR_BASE ;
 int PLATFORM_I2C_DIRECTION_RECEIVER ;
 int get_address (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int mcp4725_i2c_id ;
 int platform_i2c_recv_byte (int ,int) ;
 int platform_i2c_send_address (int ,int,int ) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

__attribute__((used)) static int mcp4725_read(lua_State* L){
  uint8 i2c_address = MCP4725_I2C_ADDR_BASE;
  uint8 recieve_buffer[5] = {0};

  if(lua_istable(L, 1))
   {
    i2c_address = get_address(L, i2c_address);
   }

  platform_i2c_send_start(mcp4725_i2c_id);
  platform_i2c_send_address(mcp4725_i2c_id, i2c_address, PLATFORM_I2C_DIRECTION_RECEIVER);
  for(int i=0;i<5;i++){
    recieve_buffer[i] = platform_i2c_recv_byte(mcp4725_i2c_id, 1);
  }
  platform_i2c_send_stop(mcp4725_i2c_id);

  lua_pushnumber(L, (recieve_buffer[0] & 0x06)>>1);
  lua_pushnumber(L, (recieve_buffer[1] << 4) | (recieve_buffer[2] >> 4));
  lua_pushnumber(L, (recieve_buffer[3] & 0x60) >> 5);
  lua_pushnumber(L, ((recieve_buffer[3] & 0xf) << 8) | recieve_buffer[4]);
  lua_pushnumber(L, (recieve_buffer[0] & 0x80) >> 7);
  lua_pushnumber(L, (recieve_buffer[0] & 0x40) >> 6);

  return 6;
}
