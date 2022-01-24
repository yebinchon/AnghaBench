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
 char const FILTER_QM ; 
 char const FILTER_STAR ; 
 char* FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(
    const char *filter,
    const char *name)
{
    const char *f = filter, *n = name;

    while (*f && *n) {
        if (*f == FILTER_STAR) {
            f = FUNC0(f);
            if (*f == '\0')
                return 1;
            while (*n && !FUNC1(f, n))
                n++;
        } else if (*f == FILTER_QM || *f == *n) {
            f++;
            n++;
        } else
            return 0;
    }
    return *f == *n || *FUNC0(f) == '\0';
}