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
typedef  int ptrdiff_t ;

/* Variables and functions */
 int PTRDIFF_MAX ; 
 int SIZE_MAX ; 
 int WORK_AROUND_QTBUG_53071 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 

__attribute__((used)) static void *
FUNC4(void *ptr, size_t itemsize, ptrdiff_t nitems, ptrdiff_t *nitems_alloc)
{
	if (nitems < *nitems_alloc)
		return ptr;
	else
	{
		ptrdiff_t	nitems_max = PTRDIFF_MAX - WORK_AROUND_QTBUG_53071;
		ptrdiff_t	amax = nitems_max < SIZE_MAX ? nitems_max : SIZE_MAX;

		if ((amax - 1) / 3 * 2 < *nitems_alloc)
			FUNC2(FUNC0("integer overflow"));
		*nitems_alloc += (*nitems_alloc >> 1) + 1;
		return FUNC1(ptr, FUNC3(*nitems_alloc, itemsize));
	}
}