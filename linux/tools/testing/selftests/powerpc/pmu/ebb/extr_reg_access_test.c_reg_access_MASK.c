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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_EBBHR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(void)
{
	uint64_t val, expected;

	FUNC1(!FUNC2());

	expected = 0x8000000100000000ull;
	FUNC4(SPRN_BESCR, expected);
	val = FUNC3(SPRN_BESCR);

	FUNC0(val != expected);

	expected = 0x0000000001000000ull;
	FUNC4(SPRN_EBBHR, expected);
	val = FUNC3(SPRN_EBBHR);

	FUNC0(val != expected);

	return 0;
}