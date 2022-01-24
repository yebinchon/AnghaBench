#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int mask; int /*<<< orphan*/  pszText; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pszText; } ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  COMBOEX_INFO ;
typedef  TYPE_1__ COMBOBOXEXITEMW ;
typedef  TYPE_2__ COMBOBOXEXITEMA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int CBEIF_TEXT ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__ const*,int) ; 

__attribute__((used)) static INT FUNC6 (COMBOEX_INFO *infoPtr, COMBOBOXEXITEMA const *cit)
{
    COMBOBOXEXITEMW citW;
    LPWSTR wstr = NULL;
    INT	ret;

    FUNC5(&citW,cit,sizeof(COMBOBOXEXITEMA));
    if (cit->mask & CBEIF_TEXT && FUNC4(cit->pszText)) {
	INT len = FUNC3 (CP_ACP, 0, cit->pszText, -1, NULL, 0);
        wstr = FUNC0 ((len + 1)*sizeof(WCHAR));
	if (!wstr) return -1;
	FUNC3 (CP_ACP, 0, cit->pszText, -1, wstr, len);
	citW.pszText = wstr;
    }
    ret = FUNC1(infoPtr, &citW);

    FUNC2(wstr);

    return ret;
}