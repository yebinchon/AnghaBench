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
 unsigned long COUNT ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long dscr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC2 () ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* result ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long sequence ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC6(void *in)
{
	unsigned long thread = (unsigned long)in;
	unsigned long i;

	for (i = 0; i < COUNT; i++) {
		unsigned long d, cur_dscr, cur_dscr_usr;
		unsigned long s1, s2;

		s1 = FUNC0(sequence);
		if (s1 & 1)
			continue;
		FUNC5();

		d = dscr;
		cur_dscr = FUNC2();
		cur_dscr_usr = FUNC3();

		FUNC5();
		s2 = sequence;

		if (s1 != s2)
			continue;

		if (cur_dscr != d) {
			FUNC1(stderr, "thread %ld kernel DSCR should be %ld "
				"but is %ld\n", thread, d, cur_dscr);
			result[thread] = 1;
			FUNC4(&result[thread]);
		}

		if (cur_dscr_usr != d) {
			FUNC1(stderr, "thread %ld user DSCR should be %ld "
				"but is %ld\n", thread, d, cur_dscr_usr);
			result[thread] = 1;
			FUNC4(&result[thread]);
		}
	}
	result[thread] = 0;
	FUNC4(&result[thread]);
}