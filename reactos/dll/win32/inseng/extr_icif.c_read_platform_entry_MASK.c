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
struct inf_section {int dummy; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_ALL ; 
 int /*<<< orphan*/  PLATFORM_MILLEN ; 
 int /*<<< orphan*/  PLATFORM_NT4 ; 
 int /*<<< orphan*/  PLATFORM_NT5 ; 
 int /*<<< orphan*/  PLATFORM_WIN98 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inf_section*,char*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static BOOL FUNC6(struct inf_section *section, DWORD *ret_platform)
{
    DWORD platform = PLATFORM_ALL;
    char *line, *str, *next;

    if (!FUNC4(section, "Platform", &line, NULL))
        return FALSE;
    if (!line) goto done;

    platform = 0;
    str = line;
    do
    {
        next = FUNC3(&str, TRUE);

        if (FUNC5(str, "Win95") == 0)
            platform |= PLATFORM_WIN98;
        else if (FUNC5(str, "Win98") == 0)
            platform |= PLATFORM_WIN98;
        else if (FUNC5(str, "NT4") == 0)
            platform |= PLATFORM_NT4;
        else if (FUNC5(str, "NT5") == 0)
            platform |= PLATFORM_NT5;
        else if (FUNC5(str, "NT4Alpha") == 0)
            platform |= PLATFORM_NT4;
        else if (FUNC5(str, "NT5Alpha") == 0)
            platform |= PLATFORM_NT5;
        else if (FUNC5(str, "Millen") == 0)
            platform |= PLATFORM_MILLEN;
        else
            FUNC0("Unknown platform: %s\n", FUNC1(str));

        str = next;
    } while (str);

done:
    FUNC2(line);
    *ret_platform = platform;
    return TRUE;
}