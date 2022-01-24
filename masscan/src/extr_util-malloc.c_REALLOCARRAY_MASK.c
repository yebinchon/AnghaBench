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
 size_t MAXNUM ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

void *
FUNC3(void *p, size_t count, size_t size)
{
    if (count >= MAXNUM || size >= MAXNUM) {
        if (size != 0 && count >= SIZE_MAX/size) {
            FUNC1(stderr, "[-] alloc too large, aborting\n");
            FUNC0();
        }
    }

    p = FUNC2(p, count * size);
    if (p == NULL && count * size != 0) {
        FUNC1(stderr, "[-] out of memory, aborting\n");
        FUNC0();
    }
    
    return p;
}