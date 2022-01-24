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
typedef  int /*<<< orphan*/  ut8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int digs, const char *where) {
	int value = 0;
	while (FUNC1 ((ut8)*where)) {	/* Skip spaces */
		where++;
		if (--digs <= 0) {
			return -1; /* All blank field */
		}
	}
	while (digs > 0 && FUNC0(*where)) {	/* Scan til nonoctal */
		value = (value << 3) | (*where++ - '0');
		--digs;
	}
	if (digs > 0 && *where && !FUNC1 ((ut8)*where)) {
		return -1; /* Ended on non-space/nul */
	}
	return value;
}