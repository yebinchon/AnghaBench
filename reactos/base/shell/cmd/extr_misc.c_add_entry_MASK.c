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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int* LPINT ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ **,int) ; 

BOOL FUNC6 (LPINT ac, LPTSTR **arg, LPCTSTR entry)
{
    LPTSTR q;
    LPTSTR *oldarg;

    q = FUNC3 ((FUNC2(entry) + 1) * sizeof (TCHAR));
    if (!q)
    {
        FUNC0("Cannot allocate memory for q!\n");
        return FALSE;
    }

    FUNC1 (q, entry);
    oldarg = *arg;
    *arg = FUNC5 (oldarg, (*ac + 2) * sizeof (LPTSTR));
    if (!*arg)
    {
        FUNC0("Cannot reallocate memory for arg!\n");
        *arg = oldarg;
        FUNC4 (q);
        return FALSE;
    }

    /* save new entry */
    (*arg)[*ac] = q;
    (*arg)[++(*ac)] = NULL;

    return TRUE;
}