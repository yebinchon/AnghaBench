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
 char* FUNC0 (char const*,char const) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

char *FUNC3(const char *haystack, const char *needle)
{
    size_t needlelen;
    /* Check for the null needle case.  */
    if (*needle == '\0')
        return (char *) haystack;
    needlelen = FUNC1(needle);
    for (; (haystack = FUNC0(haystack, *needle)) != 0; haystack++)
        if (FUNC2(haystack, needle, needlelen) == 0)
            return (char *) haystack;
    return 0;
}