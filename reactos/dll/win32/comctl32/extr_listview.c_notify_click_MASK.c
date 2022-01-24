#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nmia ;
struct TYPE_15__ {int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_14__ {int /*<<< orphan*/  iItem; int /*<<< orphan*/  pt; int /*<<< orphan*/  iSubItem; } ;
struct TYPE_13__ {int /*<<< orphan*/  lParam; scalar_t__ iSubItem; int /*<<< orphan*/  iItem; int /*<<< orphan*/  mask; } ;
struct TYPE_12__ {int /*<<< orphan*/  lParam; int /*<<< orphan*/  ptAction; int /*<<< orphan*/  iSubItem; int /*<<< orphan*/  iItem; } ;
typedef  TYPE_1__ NMITEMACTIVATE ;
typedef  int /*<<< orphan*/  NMHDR ;
typedef  TYPE_2__ LVITEMW ;
typedef  TYPE_3__ LVHITTESTINFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_4__ LISTVIEW_INFO ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__ const*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  LVIF_PARAM ; 
 scalar_t__ NM_RCLICK ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__ const*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC6(const LISTVIEW_INFO *infoPtr, INT code, const LVHITTESTINFO *lvht)
{
    NMITEMACTIVATE nmia;
    LVITEMW item;
    HWND hwnd = infoPtr->hwndSelf;
    LRESULT ret;

    FUNC2("code=%d, lvht=%s\n", code, FUNC4(lvht)); 
    FUNC3(&nmia, sizeof(nmia));
    nmia.iItem = lvht->iItem;
    nmia.iSubItem = lvht->iSubItem;
    nmia.ptAction = lvht->pt;
    item.mask = LVIF_PARAM;
    item.iItem = lvht->iItem;
    item.iSubItem = 0;
    if (FUNC1(infoPtr, &item, TRUE)) nmia.lParam = item.lParam;
    ret = FUNC5(infoPtr, code, (NMHDR*)&nmia);
    return FUNC0(hwnd) && (code == NM_RCLICK ? !ret : TRUE);
}