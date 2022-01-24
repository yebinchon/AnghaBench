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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const* FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

char *FUNC4(const char *list[], size_t *out_len)
{
    size_t len = 0;
    char *p, *ret;
    int i;

    for (i = 0; list[i] != NULL; i++)
        len += FUNC3(list[i]);

    if (out_len != NULL)
        *out_len = len;

    if (!FUNC1(ret = p = FUNC0(len + 1)))
        return NULL;

    for (i = 0; list[i] != NULL; i++)
        p += FUNC3(FUNC2(p, list[i]));

    return ret;
}