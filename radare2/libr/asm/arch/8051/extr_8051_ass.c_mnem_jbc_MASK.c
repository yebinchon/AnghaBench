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
typedef  scalar_t__ ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const* const,scalar_t__*) ; 

__attribute__((used)) static bool FUNC3(char const*const*arg, ut16 pc, ut8**out) {
	ut8 cmp_addr;
	if (!FUNC0 (arg[0], &cmp_addr)) {
		return false;
	}
	ut16 jmp_addr;
	if (!FUNC2 (arg[1], &jmp_addr)
		|| !FUNC1 (pc + 1, jmp_addr, (*out) + 2)) {
		return false;
	}
	(*out)[0] = 0x10;
	(*out)[1] = cmp_addr;
	// out[2] set earlier
	*out += 3;
	return true;
}