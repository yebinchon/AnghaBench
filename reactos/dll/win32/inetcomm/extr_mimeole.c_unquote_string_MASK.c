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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static char *FUNC4(const char *str)
{
    BOOL quoted = FALSE;
    char *ret, *cp;

    while(*str == ' ' || *str == '\t') str++;

    if(*str == '"')
    {
        quoted = TRUE;
        str++;
    }
    ret = FUNC2(str);
    for(cp = ret; *cp; cp++)
    {
        if(*cp == '\\')
            FUNC1(cp, cp + 1, FUNC3(cp + 1) + 1);
        else if(*cp == '"')
        {
            if(!quoted)
            {
                FUNC0("quote in unquoted string\n");
            }
            else
            {
                *cp = '\0';
                break;
            }
        }
    }
    return ret;
}