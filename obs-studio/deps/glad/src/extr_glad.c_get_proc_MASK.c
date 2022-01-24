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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * libGL ; 

__attribute__((used)) static
void* FUNC3(const char *namez) {
    void* result = NULL;
    if(libGL == NULL) return NULL;

#ifndef __APPLE__
    if(&gladGetProcAddressPtr != NULL) {
        result = FUNC2(namez);
    }
#endif
    if(result == NULL) {
#ifdef _WIN32
        result = (void*)GetProcAddress(libGL, namez);
#else
        result = FUNC1(libGL, namez);
#endif
    }

    return result;
}