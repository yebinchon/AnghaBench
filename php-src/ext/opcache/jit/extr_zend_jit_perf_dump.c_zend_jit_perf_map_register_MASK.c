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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,size_t,char const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(const char *name, void *start, size_t size)
{
	static FILE *fp = NULL;

	if (!fp) {
		char filename[64];

		FUNC4(filename, "/tmp/perf-%d.map", FUNC2());
		fp = FUNC0(filename, "w");
		if (!fp) {
			return;
		}
	    FUNC3(fp);
	}
	FUNC1(fp, "%zx %zx %s\n", (size_t)(uintptr_t)start, size, name);
}