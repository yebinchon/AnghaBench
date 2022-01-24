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
struct coro {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct coro*,void (*) (void*),void*) ; 
 void* FUNC2 (size_t) ; 

void *FUNC3(struct coro *coro,
                       size_t size,
                       void (*destroy_func)(void *data))
{
    void *ptr = FUNC2(size);

    if (FUNC0(ptr))
        FUNC1(coro, destroy_func, ptr);

    return ptr;
}