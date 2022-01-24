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
 int /*<<< orphan*/  FUNC0 (char,int,int*) ; 

__attribute__((used)) static void FUNC1(unsigned long tuple, int count, int wrap, int *plen, int y_abbr) {
	int i, lim;
	char out[5];
	if (tuple == 0 && count == 4) {
		FUNC0('z', wrap, plen);
	}
	else if (tuple == 0x20202020 && count == 4 && y_abbr) {
		FUNC0('y', wrap, plen);
	}
	else {
		for (i = 0; i < 5; i++) {
			out[i] = tuple % 85 + '!';
			tuple /= 85;
		}
		lim = 4 - count;
		for (i = 4; i >= lim; i--) {
			FUNC0(out[i], wrap, plen);
		}
	}
}