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
struct statfs {int f_type; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct statfs*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(void)
{
	DIR *d;
	struct statfs sfs;

	d = FUNC4("/proc");
	if (!d)
		return 4;

	/* Ensure /proc is proc. */
	if (FUNC3(FUNC0(d), &sfs) == -1) {
		return 1;
	}
	if (sfs.f_type != 0x9fa0) {
		FUNC2(stderr, "error: unexpected f_type %lx\n", (long)sfs.f_type);
		return 2;
	}

	FUNC1(d, 0);

	return 0;
}