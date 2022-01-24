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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  TCS34725_BDATAL ; 
 int /*<<< orphan*/  TCS34725_CDATAL ; 
 int /*<<< orphan*/  TCS34725_GDATAL ; 
 int /*<<< orphan*/  TCS34725_RDATAL ; 
 int /*<<< orphan*/  _tcs34725Initialised ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint8_t FUNC3(lua_State* L)
{
	uint16_t r;
	uint16_t g;
	uint16_t b;
	uint16_t c;

	if (!_tcs34725Initialised)
	{
		return FUNC0(L, "TCS34725 not initialised.");
	}

	c = FUNC2(TCS34725_CDATAL);
	r = FUNC2(TCS34725_RDATAL);
	g = FUNC2(TCS34725_GDATAL);
	b = FUNC2(TCS34725_BDATAL);
	FUNC1(L, c);
	FUNC1(L, r);
	FUNC1(L, g);
	FUNC1(L, b);
	return 4;
}