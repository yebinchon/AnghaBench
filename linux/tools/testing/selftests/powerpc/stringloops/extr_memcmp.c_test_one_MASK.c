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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (char*,char*,unsigned long) ; 
 scalar_t__ vmx_count ; 

__attribute__((used)) static void FUNC4(char *s1, char *s2, unsigned long max_offset,
		unsigned long size_start, unsigned long max_size)
{
	unsigned long offset, size;

	for (offset = 0; offset < max_offset; offset++) {
		for (size = size_start; size < (max_size - offset); size++) {
			int x, y;
			unsigned long i;

			y = FUNC1(s1+offset, s2+offset, size);
			x = FUNC3(s1+offset, s2+offset, size);

			if (((x ^ y) < 0) &&	/* Trick to compare sign */
				((x | y) != 0)) { /* check for zero */
				FUNC2("memcmp returned %d, should have returned %d (offset %ld size %ld)\n", x, y, offset, size);

				for (i = offset; i < offset+size; i++)
					FUNC2("%02x ", s1[i]);
				FUNC2("\n");

				for (i = offset; i < offset+size; i++)
					FUNC2("%02x ", s2[i]);
				FUNC2("\n");
				FUNC0();
			}

			if (vmx_count != 0) {
				FUNC2("vmx enter/exit not paired.(offset:%ld size:%ld s1:%p s2:%p vc:%d\n",
					offset, size, s1, s2, vmx_count);
				FUNC2("\n");
				FUNC0();
			}
		}
	}
}