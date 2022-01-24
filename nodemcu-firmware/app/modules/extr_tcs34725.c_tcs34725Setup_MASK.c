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
 int /*<<< orphan*/  TCS34725_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

uint8_t FUNC4(lua_State* L)
{
	uint8_t id = 0;

	/* Make sure we have the right IC (0x44 = TCS34725 and TCS34721) */
	id = FUNC3(TCS34725_ID);
	FUNC0("id: %x\n",id);
	if (id != 0x44) {
		return FUNC1(L, "No TCS34725 found.");
	}

	FUNC2(L, 1);
	return 1;
}