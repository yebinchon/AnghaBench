#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  LPINT ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC13 (LPINT ac, LPTSTR **arg, LPCTSTR pattern)
{
    HANDLE hFind;
    WIN32_FIND_DATA FindData;
    BOOL ok;
    LPCTSTR pathend;
    LPTSTR dirpart, fullname;

    pathend = FUNC8 (pattern, FUNC4('\\'));
    if (NULL != pathend)
    {
        dirpart = FUNC10((pathend - pattern + 2) * sizeof(TCHAR));
        if (!dirpart)
        {
            FUNC3("Cannot allocate memory for dirpart!\n");
            return FALSE;
        }
        FUNC12(dirpart, pattern, pathend - pattern + 1);
        dirpart[pathend - pattern + 1] = FUNC4('\0');
    }
    else
    {
        dirpart = NULL;
    }
    hFind = FUNC1 (pattern, &FindData);
    if (INVALID_HANDLE_VALUE != hFind)
    {
        do
        {
            if (NULL != dirpart)
            {
                fullname = FUNC10((FUNC7(dirpart) + FUNC7(FindData.cFileName) + 1) * sizeof(TCHAR));
                if (!fullname)
                {
                    FUNC3("Cannot allocate memory for fullname!\n");
                    ok = FALSE;
                }
                else
                {
                    FUNC5 (FUNC6 (fullname, dirpart), FindData.cFileName);
                    ok = FUNC9(ac, arg, fullname);
                    FUNC11 (fullname);
                }
            }
            else
            {
                ok = FUNC9(ac, arg, FindData.cFileName);
            }
        } while (FUNC2 (hFind, &FindData) && ok);
        FUNC0 (hFind);
    }
    else
    {
        ok = FUNC9(ac, arg, pattern);
    }

    if (NULL != dirpart)
    {
        FUNC11 (dirpart);
    }

    return ok;
}