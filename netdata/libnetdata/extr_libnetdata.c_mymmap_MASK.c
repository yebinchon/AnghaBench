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
 void* MAP_FAILED ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  enable_ksm ; 
 scalar_t__ errno ; 
 void* FUNC0 (char const*,size_t,int) ; 
 void* FUNC1 (char const*,size_t,int) ; 

void *FUNC2(const char *filename, size_t size, int flags, int ksm) {
    void *mem = NULL;

    if (filename && (flags & MAP_SHARED || !enable_ksm || !ksm))
        // memory mode = map | save
        // when KSM is not enabled
        // MAP_SHARED is used for memory mode = map (no KSM possible)
        mem = FUNC0(filename, size, flags);

    else
        // memory mode = save | ram
        // when KSM is enabled
        // for memory mode = ram, the filename is NULL
        mem = FUNC1(filename, size, flags);

    if(mem == MAP_FAILED) return NULL;

    errno = 0;
    return mem;
}