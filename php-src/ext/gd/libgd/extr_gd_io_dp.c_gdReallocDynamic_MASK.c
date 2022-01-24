#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int realSize; void* data; int /*<<< orphan*/  logicalSize; } ;
typedef  TYPE_1__ dynamicPtr ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (dynamicPtr * dp, int required)
{
	void *newPtr;

	/* First try gdRealloc(). If that doesn't work, make a new memory block and copy. */
	if ((newPtr = FUNC2(dp->data, required))) {
		dp->realSize = required;
		dp->data = newPtr;
		return TRUE;
	}

	/* create a new pointer */
	newPtr = FUNC1(required);

	/* copy the old data into it */
	FUNC3(newPtr, dp->data, dp->logicalSize);
	FUNC0(dp->data);
	dp->data = newPtr;

	dp->realSize = required;

	return TRUE;
}