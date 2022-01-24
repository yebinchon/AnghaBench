#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  pszIndicator; TYPE_1__* pLocale; int /*<<< orphan*/ * pLayout; int /*<<< orphan*/  wFlags; struct TYPE_7__* pNext; } ;
struct TYPE_6__ {int /*<<< orphan*/  dwId; } ;
typedef  TYPE_1__ LOCALE_LIST_NODE ;
typedef  int /*<<< orphan*/  LAYOUT_LIST_NODE ;
typedef  TYPE_2__ INPUT_LIST_NODE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INPUT_LIST_NODE_FLAG_ADDED ; 
 TYPE_2__* FUNC2 () ; 
 int LOCALE_NOUSEROVERRIDE ; 
 int LOCALE_SABBREVLANGNAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_STR_LEN ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* _InputList ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 size_t FUNC5 (scalar_t__*) ; 

BOOL
FUNC6(LOCALE_LIST_NODE *pLocale, LAYOUT_LIST_NODE *pLayout)
{
    WCHAR szIndicator[MAX_STR_LEN];
    INPUT_LIST_NODE *pInput;

    if (pLocale == NULL || pLayout == NULL)
    {
        return FALSE;
    }

    for (pInput = _InputList; pInput != NULL; pInput = pInput->pNext)
    {
        if (pInput->pLocale == pLocale && pInput->pLayout == pLayout)
        {
            return FALSE;
        }
    }

    pInput = FUNC2();

    pInput->wFlags = INPUT_LIST_NODE_FLAG_ADDED;

    pInput->pLocale = pLocale;
    pInput->pLayout = pLayout;

    if (FUNC1(FUNC3(pInput->pLocale->dwId),
                       LOCALE_SABBREVLANGNAME | LOCALE_NOUSEROVERRIDE,
                       szIndicator,
                       FUNC0(szIndicator)))
    {
        size_t len = FUNC5(szIndicator);

        if (len > 0)
        {
            szIndicator[len - 1] = 0;
            pInput->pszIndicator = FUNC4(szIndicator);
        }
    }

    return TRUE;
}