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
 int TEST_FAIL ; 
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,float,float) ; 

int FUNC1(float *fpr, float val)
{
	int i, found = 1;

	for (i = 0; i < 32; i++) {
		if (fpr[i] != val) {
			FUNC0("FPR[%d]: %f Expected: %f\n", i, fpr[i], val);
			found = 0;
		}
	}

	if (!found)
		return TEST_FAIL;
	return TEST_PASS;
}