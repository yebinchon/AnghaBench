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
 unsigned long ITERATIONS ; 
 unsigned long SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(void)
{
	char *s;
	unsigned long i;

	s = FUNC2(128, SIZE);
	if (!s) {
		FUNC4("memalign");
		FUNC1(1);
	}

	FUNC6(1);

	FUNC3(s, 0, SIZE);
	for (i = 0; i < SIZE; i++) {
		char c;

		do {
			c = FUNC5() & 0x7f;
		} while (!c);
		s[i] = c;
		FUNC7(s);
	}

	for (i = 0; i < ITERATIONS; i++) {
		unsigned long j;

		for (j = 0; j < SIZE; j++) {
			char c;

			do {
				c = FUNC5() & 0x7f;
			} while (!c);
			s[j] = c;
		}
		for (j = 0; j < sizeof(long); j++) {
			s[SIZE - 1 - j] = 0;
			FUNC7(s);
		}
	}

	for (i = 0; i < SIZE; i++) {
		char c;

		do {
			c = FUNC5() & 0x7f;
		} while (!c);
		s[i] = c;
	}

	FUNC0(s);

	s[16] = 0;
	FUNC0(s);

	s[8] = 0;
	FUNC0(s);

	s[4] = 0;
	FUNC0(s);

	s[3] = 0;
	FUNC0(s);

	s[2] = 0;
	FUNC0(s);

	s[1] = 0;
	FUNC0(s);

	return 0;
}