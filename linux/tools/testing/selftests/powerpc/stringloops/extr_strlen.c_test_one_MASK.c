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
 unsigned long SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *s)
{
	unsigned long offset;

	for (offset = 0; offset < SIZE; offset++) {
		int x, y;
		unsigned long i;

		y = FUNC1(s + offset);
		x = FUNC2(s + offset);

		if (x != y) {
			FUNC0("strlen() returned %d, should have returned %d (%p offset %ld)\n", x, y, s, offset);

			for (i = offset; i < SIZE; i++)
				FUNC0("%02x ", s[i]);
			FUNC0("\n");
		}
	}
}