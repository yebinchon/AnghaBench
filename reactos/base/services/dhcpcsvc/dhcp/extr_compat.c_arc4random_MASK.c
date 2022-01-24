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
typedef  int u_int32_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

u_int32_t FUNC2()
{
	static int did_srand = 0;
	u_int32_t ret;

	if (!did_srand) {
		FUNC1(0);
		did_srand = 1;
	}

	ret = FUNC0() << 10 ^ FUNC0();
	return ret;
}