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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void**,size_t,size_t) ; 

__attribute__((used)) static inline void *
FUNC3(size_t n, size_t alignment)
{
    void *ret;

    FUNC1((alignment & (alignment - 1)) == 0);

    n = (n + alignment - 1) & ~(alignment - 1);
    if (FUNC0(FUNC2(&ret, alignment, n)))
        return NULL;

    return ret;
}