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
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRING_ERROR_REQ_PARAM_MISSING ; 
 int /*<<< orphan*/  STRING_MD_ERROR2 ; 
 int /*<<< orphan*/  STRING_MKDIR_HELP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ nErrorLevel ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

INT FUNC9 (LPTSTR param)
{
    LPTSTR *p;
    INT argc, i;
    if (!FUNC6 (param, FUNC5("/?"), 2))
    {
        FUNC1(TRUE,STRING_MKDIR_HELP);
        return 0;
    }

    p = FUNC8 (param, &argc, FALSE, FALSE);
    if (argc == 0)
    {
        FUNC0(STRING_ERROR_REQ_PARAM_MISSING);
        FUNC7(p);
        nErrorLevel = 1;
        return 1;
    }

    nErrorLevel = 0;
    for (i = 0; i < argc; i++)
    {
        if (!FUNC4(p[i]))
        {
            if (FUNC3() == ERROR_PATH_NOT_FOUND)
            {
                FUNC0(STRING_MD_ERROR2);
            }
            else
            {
                FUNC2 (FUNC3(), FUNC5("MD"));
            }
            nErrorLevel = 1;
        }
    }

    FUNC7 (p);
    return nErrorLevel;
}