#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT_PTR ;
typedef  int UINT ;
struct TYPE_3__ {int /*<<< orphan*/  hTitleIcon; int /*<<< orphan*/ * pszTitle; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ TOOLTIPS_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HICON ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t TTI_ERROR ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * hTooltipIcons ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC7 (scalar_t__) ; 

__attribute__((used)) static LRESULT
FUNC8 (TOOLTIPS_INFO *infoPtr, UINT_PTR uTitleIcon, LPCWSTR pszTitle,
                    BOOL isW)
{
    UINT size;

    FUNC4("hwnd = %p, title = %s, icon = %p\n", infoPtr->hwndSelf, FUNC5(pszTitle),
        (void*)uTitleIcon);

    FUNC2(infoPtr->pszTitle);

    if (pszTitle)
    {
        if (isW)
        {
            size = (FUNC7(pszTitle)+1)*sizeof(WCHAR);
            infoPtr->pszTitle = FUNC0(size);
            if (!infoPtr->pszTitle)
                return FALSE;
            FUNC6(infoPtr->pszTitle, pszTitle, size);
        }
        else
        {
            size = sizeof(WCHAR)*FUNC3(CP_ACP, 0, (LPCSTR)pszTitle, -1, NULL, 0);
            infoPtr->pszTitle = FUNC0(size);
            if (!infoPtr->pszTitle)
                return FALSE;
            FUNC3(CP_ACP, 0, (LPCSTR)pszTitle, -1, infoPtr->pszTitle, size/sizeof(WCHAR));
        }
    }
    else
        infoPtr->pszTitle = NULL;

    if (uTitleIcon <= TTI_ERROR)
        infoPtr->hTitleIcon = hTooltipIcons[uTitleIcon];
    else
        infoPtr->hTitleIcon = FUNC1((HICON)uTitleIcon);

    FUNC4("icon = %p\n", infoPtr->hTitleIcon);

    return TRUE;
}