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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FENCE_STATUS_ACTIVE ; 
 int /*<<< orphan*/  FENCE_STATUS_ERROR ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int fence)
{
	int error, active;

	do {
		error = FUNC1(fence, FENCE_STATUS_ERROR);
		FUNC0(error == 0, "Error occurred on fence\n");
		active = FUNC1(fence,
						      FENCE_STATUS_ACTIVE);
	} while (active);

	return 0;
}