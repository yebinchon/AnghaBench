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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

char *FUNC3(void *ta_parent, const char *fmt, va_list ap)
{
    char *res = NULL;
    FUNC2(&res, 0, fmt, ap);
    if (!res || !FUNC1(res, ta_parent)) {
        FUNC0(res);
        return NULL;
    }
    return res;
}