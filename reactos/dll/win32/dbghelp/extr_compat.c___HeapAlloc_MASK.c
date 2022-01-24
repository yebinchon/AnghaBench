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
 int HEAP_ZERO_MEMORY ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 

void* FUNC2(int heap, int flags, size_t size)
{
    void * ret = FUNC0(size);
    if(flags & HEAP_ZERO_MEMORY)
        FUNC1(ret, 0, size);
    return ret;
}