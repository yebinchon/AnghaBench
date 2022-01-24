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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  stderr ; 

void *
FUNC3(size_t size)
{
    void *p;
    
    /* If 'size' is zero, then the behavior of 'malloc()' is undefined.
     * I'm not sure which behavior would be best, to either always abort
     * or always succeed. I'm choosing "always succeed" by bumping the
     * length by one byte */
    if (size == 0)
        size = 1;
    
    /* Do the original allocation */
    p = FUNC2(size);
    
    /* Abort the program if we've run out of memory */
    if (p == NULL) {
        FUNC1(stderr, "[-] out of memory, aborting\n");
        FUNC0();
    }
    
    /* At this point, we've either succeeded or aborted the program,
     * so this value is guaranteed to never be NULL */
    return p;
}