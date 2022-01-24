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
typedef  int int_fast32_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDIOC_G_STD ; 
 int /*<<< orphan*/  VIDIOC_S_STD ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int*) ; 

int_fast32_t FUNC1(int_fast32_t dev, int *standard)
{
	if (!dev || !standard)
		return -1;

	if (*standard == -1) {
		if (FUNC0(dev, VIDIOC_G_STD, standard) < 0)
			return -1;
	} else {
		if (FUNC0(dev, VIDIOC_S_STD, standard) < 0)
			return -1;
	}

	return 0;
}