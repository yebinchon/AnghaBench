#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nmce ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/ * pszText; int /*<<< orphan*/ * pszTemp; int /*<<< orphan*/  lParam; } ;
struct TYPE_9__ {int mask; int /*<<< orphan*/ * pszText; int /*<<< orphan*/  iItem; int /*<<< orphan*/  lParam; } ;
struct TYPE_10__ {TYPE_1__ ceItem; } ;
typedef  TYPE_2__ NMCOMBOBOXEXW ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  COMBOEX_INFO ;
typedef  TYPE_3__ CBE_ITEMDATA ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int CBEIF_DI_SETITEM ; 
 int CBEIF_TEXT ; 
 int /*<<< orphan*/  CBEN_GETDISPINFOW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * LPSTR_TEXTCALLBACKW ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPCWSTR FUNC8(const COMBOEX_INFO *infoPtr, CBE_ITEMDATA *item)
{
    NMCOMBOBOXEXW nmce;
    LPWSTR text, buf;
    INT len;

    if (item->pszText != LPSTR_TEXTCALLBACKW)
	return item->pszText;

    FUNC6(&nmce, sizeof(nmce));
    nmce.ceItem.mask = CBEIF_TEXT;
    nmce.ceItem.lParam = item->lParam;
    nmce.ceItem.iItem = FUNC2(infoPtr, item);
    FUNC3(infoPtr, CBEN_GETDISPINFOW, &nmce);

    if (FUNC7(nmce.ceItem.pszText)) {
	len = FUNC5 (CP_ACP, 0, (LPSTR)nmce.ceItem.pszText, -1, NULL, 0);
        buf = FUNC0 ((len + 1)*sizeof(WCHAR));
	if (buf)
	    FUNC5 (CP_ACP, 0, (LPSTR)nmce.ceItem.pszText, -1, buf, len);
	if (nmce.ceItem.mask & CBEIF_DI_SETITEM) {
	    FUNC1(item);
	    item->pszText = buf;
	} else {
	    FUNC4(item->pszTemp);
	    item->pszTemp = buf;
	}
	text = buf;
    } else
	text = nmce.ceItem.pszText;

    if (nmce.ceItem.mask & CBEIF_DI_SETITEM)
	item->pszText = text;
    return text;
}