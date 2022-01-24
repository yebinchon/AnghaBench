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
 int FUNC0 (double) ; 
 int FUNC1 (double) ; 

void FUNC2(double h, int *hour, int *min, int *sec)
{
	if (h > 0) {
		*hour = FUNC1(h);
		*min = FUNC1((h - *hour) * 60);
		*sec = (h - *hour - ((float) *min / 60)) * 3600;
	} else {
		*hour = FUNC0(h);
		*min = 0 - FUNC0((h - *hour) * 60);
		*sec = 0 - (h - *hour - ((float) *min / -60)) * 3600;
	}
}