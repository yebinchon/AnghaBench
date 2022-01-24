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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tcs34725Gain_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  TCS34725_CONTROL ; 
 int /*<<< orphan*/  _tcs34725Gain ; 
 int /*<<< orphan*/  _tcs34725Initialised ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint8_t FUNC2(tcs34725Gain_t gain, lua_State* L)
{
	if (!_tcs34725Initialised)
	{
		return FUNC0(L, "TCS34725 not initialised.");
	}

	FUNC1(TCS34725_CONTROL, gain);
	_tcs34725Gain = gain;

	return 0;
}