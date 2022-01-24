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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char const*) ; 

char *
FUNC4(const char *str)
{
#if defined(WIN32)
    char *p = _strdup(str);
#else
    char *p = FUNC3(str);
#endif
    
    if (p == NULL && str != NULL) {
        FUNC2(stderr, "[-] out of memory, aborting\n");
        FUNC1();
    }
    
    return p;
}