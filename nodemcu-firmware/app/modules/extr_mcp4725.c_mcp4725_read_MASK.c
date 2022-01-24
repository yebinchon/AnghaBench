#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int MCP4725_I2C_ADDR_BASE ; 
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_RECEIVER ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mcp4725_i2c_id ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(lua_State* L){
  uint8 i2c_address = MCP4725_I2C_ADDR_BASE;
  uint8 recieve_buffer[5] = {0};

  if(FUNC1(L, 1))
   {
    i2c_address = FUNC0(L, i2c_address);
   }

  FUNC5(mcp4725_i2c_id);
  FUNC4(mcp4725_i2c_id, i2c_address, PLATFORM_I2C_DIRECTION_RECEIVER);
  for(int i=0;i<5;i++){
    recieve_buffer[i] = FUNC3(mcp4725_i2c_id, 1);
  }
  FUNC6(mcp4725_i2c_id);

  FUNC2(L, (recieve_buffer[0] & 0x06)>>1);
  FUNC2(L, (recieve_buffer[1] << 4) | (recieve_buffer[2] >> 4));
  FUNC2(L, (recieve_buffer[3] & 0x60) >> 5);
  FUNC2(L, ((recieve_buffer[3] & 0xf) << 8) | recieve_buffer[4]);
  FUNC2(L, (recieve_buffer[0] & 0x80) >> 7);
  FUNC2(L, (recieve_buffer[0] & 0x40) >> 6);

  return 6;
}