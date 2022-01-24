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
 int FUNC0 (char const* const) ; 
 scalar_t__ FUNC1 (char*,char const* const,int) ; 

__attribute__((used)) static char *FUNC2(char *s, const char *const *prefixes)
{
    for (int n = 0; prefixes[n]; n++) {
        int len = FUNC0(prefixes[n]);
        if (FUNC1(s, prefixes[n], len) == 0)
            return s + len;
    }
    return s;
}