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
struct timex {int freq; int /*<<< orphan*/  modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADJ_FREQUENCY ; 
 int FUNC0 (struct timex*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

int FUNC3(int ppm)
{
	struct timex tx;
	int ret;

	tx.modes = ADJ_FREQUENCY;
	tx.freq = ppm << 16;

	ret = FUNC0(&tx);
	if (ret < 0) {
		FUNC1("Error adjusting freq\n");
		return ret;
	}

	ret = FUNC2("./raw_skew");
	ret |= FUNC2("./inconsistency-check");
	ret |= FUNC2("./nanosleep");

	return ret;
}