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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inf_section*,char*,char**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC4(struct inf_section *section, DWORD *ret_ver, DWORD *ret_build)
{
    DWORD version = 0;
    DWORD build = 0;
    char *line, *str, *next;

    if (!FUNC3(section, "Version", &line, NULL))
        return FALSE;
    if (!line) goto done;

    str = line;

    next = FUNC2(&str, TRUE);
    version |= FUNC0(str) << 16;
    if (!next) goto done;
    str = next;

    next = FUNC2(&str, TRUE);
    version |= FUNC0(str) & 0xffff;
    if (!next) goto done;
    str = next;

    next = FUNC2(&str, TRUE);
    build |= FUNC0(str) << 16;
    if (!next) goto done;
    str = next;

    FUNC2(&str, TRUE);
    build |= FUNC0(str) & 0xffff;

done:
    FUNC1(line);
    *ret_ver = version;
    *ret_build = build;
    return TRUE;
}