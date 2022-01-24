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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/ * pFileName; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_1__* PCONSOLE_CHILDFRM_WND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC6(
    PCONSOLE_CHILDFRM_WND Info,
    PWSTR pFileName)
{
    FUNC0("SetFileName(&p \'%S\')\n", Info, pFileName);

    if (Info->pFileName != NULL)
    {
        FUNC3(FUNC1(), 0, Info->pFileName);
        Info->pFileName = NULL;
    }

    if (pFileName != NULL)
    {
        Info->pFileName = FUNC2(FUNC1(),
                                    0,
                                    (FUNC5(pFileName) + 1) * sizeof(TCHAR));
        if (Info->pFileName != NULL)
            FUNC4(Info->pFileName, pFileName);
    }
}