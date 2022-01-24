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
typedef  scalar_t__ TCHAR ;
typedef  size_t INT_PTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__* FUNC3 (scalar_t__*,scalar_t__) ; 
 int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,size_t) ; 

BOOL
FUNC6(TCHAR * DirPath)
{
    TCHAR path[MAX_PATH];
    TCHAR *p = DirPath;
    INT_PTR  n;

    if (FUNC0(DirPath, NULL))
        return TRUE;
    else if (FUNC1() != ERROR_PATH_NOT_FOUND)
        return FALSE;

    /* got ERROR_PATH_NOT_FOUND, so try building it up one component at a time */
    if (p[0] && p[1] == FUNC2(':'))
        p += 2;
    while (*p == FUNC2('\\'))
        p++; /* skip drive root */
    do
    {
        p = FUNC3(p, FUNC2('\\'));
        n = p ? p++ - DirPath : FUNC4(DirPath);
        FUNC5(path, DirPath, n);
        path[n] = FUNC2('\0');
        if ( !FUNC0(path, NULL) &&
            (FUNC1() != ERROR_ALREADY_EXISTS))
        {
            return FALSE;
        }
    } while (p != NULL);

    return TRUE;
}