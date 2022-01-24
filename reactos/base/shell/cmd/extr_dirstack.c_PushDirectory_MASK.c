#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  szPath; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  TYPE_1__* LPDIRENTRY ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  DIRENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* lpStackBottom ; 
 TYPE_1__* lpStackTop ; 
 int nErrorLevel ; 
 int /*<<< orphan*/  nStackDepth ; 
 int /*<<< orphan*/ * szPath ; 

__attribute__((used)) static INT
FUNC6 (LPTSTR pszPath)
{
    LPDIRENTRY lpDir = FUNC4(FUNC0(DIRENTRY, szPath[FUNC3(pszPath) + 1]));
    if (!lpDir)
    {
        FUNC1("Cannot allocate memory for lpDir\n");
        FUNC5();
        return -1;
    }

    lpDir->prev = NULL;
    lpDir->next = lpStackTop;
    if (lpStackTop == NULL)
        lpStackBottom = lpDir;
    else
        lpStackTop->prev = lpDir;
    lpStackTop = lpDir;

    FUNC2(lpDir->szPath, pszPath);

    nStackDepth++;

    return nErrorLevel = 0;
}