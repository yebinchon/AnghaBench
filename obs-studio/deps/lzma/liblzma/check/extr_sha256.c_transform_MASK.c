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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC10(uint32_t state[8], const uint32_t data[16])
{
	uint32_t W[16];
	uint32_t T[8];

	// Copy state[] to working vars.
	FUNC9(T, state, sizeof(T));

	// 64 operations, partially loop unrolled
	for (unsigned int j = 0; j < 64; j += 16) {
		FUNC0( 0); FUNC0( 1); FUNC0( 2); FUNC0( 3);
		FUNC0( 4); FUNC0( 5); FUNC0( 6); FUNC0( 7);
		FUNC0( 8); FUNC0( 9); FUNC0(10); FUNC0(11);
		FUNC0(12); FUNC0(13); FUNC0(14); FUNC0(15);
	}

	// Add the working vars back into state[].
	state[0] += FUNC1(0);
	state[1] += FUNC2(0);
	state[2] += FUNC3(0);
	state[3] += FUNC4(0);
	state[4] += FUNC5(0);
	state[5] += FUNC6(0);
	state[6] += FUNC7(0);
	state[7] += FUNC8(0);
}