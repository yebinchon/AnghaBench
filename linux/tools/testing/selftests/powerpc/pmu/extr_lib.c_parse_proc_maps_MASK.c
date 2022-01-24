#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long first; unsigned long last; } ;
struct TYPE_3__ {unsigned long first; unsigned long last; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,unsigned long*,unsigned long*,char*,char*) ; 
 TYPE_2__ libc ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 TYPE_1__ vdso ; 

int FUNC5(void)
{
	unsigned long start, end;
	char execute, name[128];
	FILE *f;
	int rc;

	f = FUNC1("/proc/self/maps", "r");
	if (!f) {
		FUNC3("fopen");
		return -1;
	}

	do {
		/* This skips line with no executable which is what we want */
		rc = FUNC2(f, "%lx-%lx %*c%*c%c%*c %*x %*d:%*d %*d %127s\n",
			    &start, &end, &execute, name);
		if (rc <= 0)
			break;

		if (execute != 'x')
			continue;

		if (FUNC4(name, "libc")) {
			libc.first = start;
			libc.last = end - 1;
		} else if (FUNC4(name, "[vdso]")) {
			vdso.first = start;
			vdso.last = end - 1;
		}
	} while(1);

	FUNC0(f);

	return 0;
}