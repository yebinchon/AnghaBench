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
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 

char *FUNC3(void *ta_parent, const char *str, size_t n)
{
    if (!str)
        return NULL;
    char *new = NULL;
    FUNC0(&new, 0, str, n);
    if (!FUNC2(new, ta_parent)) {
        FUNC1(new);
        new = NULL;
    }
    return new;
}