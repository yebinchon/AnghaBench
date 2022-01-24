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
typedef  int /*<<< orphan*/  pfn ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static uint64_t FUNC7(unsigned long addr)
{
	FILE *file;
	uint64_t pfn;
	unsigned long offset;

	file = FUNC2("/proc/self/pagemap", "r");
	if (!file) {
		FUNC6("fopen pagemap");
		FUNC0(1);
	}

	offset = addr / FUNC5() * sizeof(pfn);

	if (FUNC4(file, offset, SEEK_SET)) {
		FUNC6("fseek pagemap");
		FUNC0(1);
	}

	if (FUNC3(&pfn, sizeof(pfn), 1, file) != 1) {
		FUNC6("fread pagemap");
		FUNC0(1);
	}

	FUNC1(file);
	return pfn;
}