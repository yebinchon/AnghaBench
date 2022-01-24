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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 

__attribute__((used)) static const char *FUNC2(const char **ptr)
{
    const char *p, *q;

    p = *ptr;
    if (!(q = FUNC1(p, "\n")))
    {
        if (!*p) return NULL;
        *ptr += FUNC0(p);
        return p;
    }
    *ptr = q + 1;

    return p;
}