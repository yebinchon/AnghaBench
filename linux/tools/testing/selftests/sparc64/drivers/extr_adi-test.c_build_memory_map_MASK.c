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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void** end_addr ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 size_t range_count ; 
 void** start_addr ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (char*,char*) ; 
 void* FUNC7 (char*,char**,int) ; 
 char* system_ram_str ; 

__attribute__((used)) static int FUNC8(void)
{
	char line[256];
	FILE *fp;
	int i;

	range_count = 0;

	fp = FUNC3("/proc/iomem", "r");
	if (!fp) {
		FUNC4(stderr, "/proc/iomem: error %d: %s\n",
			errno, FUNC5(errno));
		return -errno;
	}

	while (FUNC2(line, sizeof(line), fp) != 0) {
		if (FUNC6(line, system_ram_str)) {
			char *dash, *end_ptr;

			/* Given a line like this:
			 * d0400000-10ffaffff : System RAM
			 * replace the "-" with a space
			 */
			dash = FUNC6(line, "-");
			dash[0] = 0x20;

			start_addr[range_count] = FUNC7(line, &end_ptr, 16);
			end_addr[range_count] = FUNC7(end_ptr, NULL, 16);
			range_count++;
		}
	}

	FUNC1(fp);

	FUNC0("RAM Ranges\n");
	for (i = 0; i < range_count; i++)
		FUNC0("\trange %d: 0x%llx\t- 0x%llx\n",
			       i, start_addr[i], end_addr[i]);

	if (range_count == 0) {
		FUNC4(stderr, "No valid address ranges found.  Error.\n");
		return -1;
	}

	return 0;
}