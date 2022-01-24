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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static uint64_t FUNC6(unsigned long pfn)
{
	uint64_t flags;
	FILE *file;

	file = FUNC2("/proc/kpageflags", "r");
	if (!file) {
		FUNC5("fopen kpageflags");
		FUNC0(1);
	}

	if (FUNC4(file, pfn * sizeof(flags), SEEK_SET)) {
		FUNC5("fseek kpageflags");
		FUNC0(1);
	}

	if (FUNC3(&flags, sizeof(flags), 1, file) != 1) {
		FUNC5("fread kpageflags");
		FUNC0(1);
	}

	FUNC1(file);
	return flags;
}