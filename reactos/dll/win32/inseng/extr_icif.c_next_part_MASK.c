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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC1(char **str, BOOL strip_quotes)
{
    char *start = *str;
    char *next = *str;

    while (*next && *next != ',')
        next++;

    if (!*next)
    {
        *str = FUNC0(start, NULL, strip_quotes);
        return NULL;
    }

    *next = 0;
    *str = FUNC0(start, NULL, strip_quotes);
    return ++next;
}