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
 void* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned long) ; 

void *FUNC2(unsigned long size)
{
	void *ptr;
	ptr = FUNC0 (size);
	FUNC1 (ptr, 0, size);
	return ptr;
}