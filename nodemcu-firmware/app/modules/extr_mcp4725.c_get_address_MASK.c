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
 int MCP4725_I2C_ADDR_A0_MASK ; 
 int MCP4725_I2C_ADDR_A1_MASK ; 
 int MCP4725_I2C_ADDR_A2_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint8 FUNC6(lua_State* L, uint8 i2c_address){
  uint8 addr_temp = i2c_address;
  uint16 temp_var = 0;
  FUNC1(L, 1, "A2");
  if (!FUNC2(L, -1))
  {
    if( FUNC3(L, -1) )
    {
      temp_var = FUNC5(L, -1);
      if(temp_var < 2){
        temp_var = MCP4725_I2C_ADDR_A2_MASK & (temp_var << 2);
        addr_temp|=temp_var;
      }
      else
        return FUNC0( L, 1, "A2: Must be 0 or 1" );
    }
    else
    {
      return FUNC0( L, 1, "A2: Must be number" );
    }
  }
  FUNC4(L, 1);

  FUNC1(L, 1, "A1");
  if (!FUNC2(L, -1))
  {
    if( FUNC3(L, -1) )
    {
      temp_var = FUNC5(L, -1);
      if(temp_var < 2){
        temp_var = MCP4725_I2C_ADDR_A1_MASK & (temp_var << 1);
        addr_temp|=temp_var;
      }
      else
        return FUNC0( L, 1, "A1: Must be 0 or 1" );
    }
    else
    {
      return FUNC0( L, 1, "A1: Must be number" );
    }
  }
  FUNC4(L, 1);

  FUNC1(L, 1, "A0");
  if (!FUNC2(L, -1))
  {
    if( FUNC3(L, -1) )
    {
      temp_var = FUNC5(L, -1);
      if(temp_var<2){
        temp_var = MCP4725_I2C_ADDR_A0_MASK & (temp_var);
        addr_temp|=temp_var;
      }
      else
        return FUNC0( L, 1, "A0: Must be 0 or 1" );
    }
    else
    {
      return FUNC0( L, 1, "A0: Must be number" );
    }
  }
  FUNC4(L, 1);

  return addr_temp;
}