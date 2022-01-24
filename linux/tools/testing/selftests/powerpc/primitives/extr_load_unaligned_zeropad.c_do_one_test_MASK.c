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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(char *p, int page_offset)
{
	unsigned long should;
	unsigned long got;

	FUNC0(FUNC4());
	should = *(unsigned long *)p;
	FUNC0(FUNC3());

	got = FUNC1(p);

	if (should != got) {
		FUNC2("offset %u load_unaligned_zeropad returned 0x%lx, should be 0x%lx\n", page_offset, got, should);
		return 1;
	}

	return 0;
}