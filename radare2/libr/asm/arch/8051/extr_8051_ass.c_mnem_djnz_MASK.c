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
typedef  int ut8 ;
typedef  int /*<<< orphan*/  ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int*) ; 
 scalar_t__ FUNC1 (char const* const) ; 
 int FUNC2 (char const* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const* const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(char const*const*arg, ut16 pc, ut8**out) {
	ut16 jmp_address;
	if (!FUNC4 (arg[1], &jmp_address)) {
		return false;
	}
	if (!FUNC3 (pc, jmp_address, (*out) + 2)) {
		return false;
	}

	if (FUNC1 (arg[0])) {
		(*out)[0] = 0xd8 | FUNC2 (arg[0]);
		(*out)[1] = (*out)[2];
		*out += 2;
		return true;
	}
	ut8 dec_address;
	if (!FUNC0 (arg[0], &dec_address))  {
		return false;
	}
	(*out)[0] = 0xd5;
	(*out)[1] = dec_address;
	(*out)[2] -= 1;
	*out += 3;
	return true;
}