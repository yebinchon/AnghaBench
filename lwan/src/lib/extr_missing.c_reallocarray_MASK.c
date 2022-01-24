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
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (void*,size_t) ; 
 int FUNC4 (size_t,size_t,size_t*) ; 

void *FUNC5(void *optr, size_t nmemb, size_t size)
{
    size_t total_size;
    if (FUNC0(FUNC4(nmemb, size, &total_size))) {
        errno = ENOMEM;
        return NULL;
    }
    if (FUNC0(total_size == 0)) {
        FUNC1(optr);
        return FUNC2(1);
    }
    return FUNC3(optr, total_size);
}