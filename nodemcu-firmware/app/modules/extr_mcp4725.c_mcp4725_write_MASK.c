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
typedef  int uint16 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int MCP4725_COMMAND_WRITE_DAC ; 
 int MCP4725_COMMAND_WRITE_DAC_EEPROM ; 
 int MCP4725_I2C_ADDR_BASE ; 
 int /*<<< orphan*/  PLATFORM_I2C_DIRECTION_TRANSMITTER ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mcp4725_i2c_id ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(lua_State* L){

  uint8 i2c_address = MCP4725_I2C_ADDR_BASE;
  uint16 dac_value = 0;
  uint8  cmd_byte = 0;

  if(FUNC6(L, 1))
  {
    i2c_address = FUNC0(L, i2c_address);
    uint16 temp_var=0;
    FUNC2(L, 1, "value");
    if (!FUNC4(L, -1))
    {
      if( FUNC5(L, -1) )
      {
        temp_var = FUNC9(L, -1);
        if(temp_var >= 0 && temp_var<=4095){
          dac_value = temp_var<<4;
        }
        else
          return FUNC1( L, 1, "value: Valid range 0-4095" );
      }
      else
      {
        return FUNC1( L, 1, "value: Must be number" );
      }
    }
    else
    {
      return FUNC1( L, 1, "value: value is required" );
    }
    FUNC7(L, 1);

    FUNC2(L, 1, "save");
    if (!FUNC4(L, -1))
    {
      if( FUNC3(L, -1) )
      {
        if(FUNC8(L, -1)){
          cmd_byte |= MCP4725_COMMAND_WRITE_DAC_EEPROM;
        }
        else{
          cmd_byte |= MCP4725_COMMAND_WRITE_DAC;
        }
      }
      else
      {
        return FUNC1( L, 1, "save: must be boolean" );
      }
    }
    else
    {
      cmd_byte |= MCP4725_COMMAND_WRITE_DAC;
    }
    FUNC7(L, 1);

    FUNC2(L, 1, "pwrdn");
    if (!FUNC4(L, -1))
    {
      if( FUNC5(L, -1) )
      {
        temp_var = FUNC9(L, -1);
        if(temp_var >= 0 && temp_var <= 3){
          cmd_byte |= temp_var << 1;
        }
        else{
          return FUNC1( L, 1, "pwrdn: Valid range 0-3" );
        }
      }
      else
      {
        return FUNC1( L, 1, "pwrdn: Must be number" );
      }
    }
    FUNC7(L, 1);

 }
  uint8 *dac_value_byte = (uint8*) & dac_value;

  FUNC12(mcp4725_i2c_id);
  FUNC10(mcp4725_i2c_id, i2c_address, PLATFORM_I2C_DIRECTION_TRANSMITTER);
  FUNC11(mcp4725_i2c_id, cmd_byte);
  FUNC11(mcp4725_i2c_id, dac_value_byte[1]);
  FUNC11(mcp4725_i2c_id, dac_value_byte[0]);
  FUNC13(mcp4725_i2c_id);

  return 0;
}