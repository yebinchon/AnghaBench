#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* (* realloc ) (void*,int) ;} ;

/* Variables and functions */
 TYPE_1__ alloc ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long) ; 
 int /*<<< orphan*/  num_allocs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (void*,size_t) ; 
 void* FUNC4 (void*,int) ; 

void *FUNC5(void *ptr, size_t size)
{
	if (!ptr)
		FUNC1(&num_allocs);

	ptr = alloc.realloc(ptr, size);
	if (!ptr && !size)
		ptr = alloc.realloc(ptr, 1);
	if (!ptr) {
		FUNC2();
		FUNC0("Out of memory while trying to allocate %lu bytes",
		       (unsigned long)size);
	}

	return ptr;
}