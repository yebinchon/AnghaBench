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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 unsigned char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static unsigned
FUNC3(uint64_t a, uint64_t c, uint64_t range, uint64_t max)
{
    unsigned char *list;
    uint64_t i;
    unsigned is_success = 1;

    /* Allocate a list of 1-byte counters */
    list = FUNC0(1, (size_t)((range<max)?range:max));
    
    /* For all numbers in the range, verify increment the counter for the
     * the output. */
    for (i=0; i<range; i++) {
        uint64_t x = FUNC2(i, a, c, range);
        if (x < max)
            list[x]++;
    }

    /* Now check the output to make sure that every counter is set exactly
     * to the value of '1'. */
    for (i=0; i<max && i<range; i++) {
        if (list[i] != 1)
            is_success = 0;
    }

    FUNC1(list);

    return is_success;
}