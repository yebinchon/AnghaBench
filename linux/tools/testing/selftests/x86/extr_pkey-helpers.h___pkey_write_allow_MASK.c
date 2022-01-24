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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,long) ; 
 long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long) ; 

__attribute__((used)) static inline void FUNC3(int pkey, int do_allow_write)
{
	long pkru = FUNC1();
	int bit = pkey * 2 + 1;

	if (do_allow_write)
		pkru &= (1<<bit);
	else
		pkru |= (1<<bit);

	FUNC2(pkru);
	FUNC0("pkru now: %08x\n", FUNC1());
}