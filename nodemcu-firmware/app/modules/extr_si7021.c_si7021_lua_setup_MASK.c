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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  SI7021_CMD_READ_RHT_REG ; 
 int /*<<< orphan*/  SI7021_CMD_RESET ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(lua_State* L) {

	FUNC3(SI7021_CMD_RESET);
	FUNC1(50000);

	// check for device on i2c bus
	uint8_t buf_r[1];
	FUNC2(SI7021_CMD_READ_RHT_REG, buf_r, 1);
	if (buf_r[0] != 0x3A)
		return FUNC0(L, "found no device");

	return 0;
}