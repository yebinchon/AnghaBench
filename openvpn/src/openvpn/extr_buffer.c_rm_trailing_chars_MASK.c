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
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 int FUNC1 (char*) ; 

void
FUNC2(char *str, const char *what_to_delete)
{
    bool modified;
    do
    {
        const int len = FUNC1(str);
        modified = false;
        if (len > 0)
        {
            char *cp = str + (len - 1);
            if (FUNC0(what_to_delete, *cp) != NULL)
            {
                *cp = '\0';
                modified = true;
            }
        }
    } while (modified);
}