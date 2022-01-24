#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lvi ;
struct TYPE_6__ {int mask; scalar_t__ lParam; int /*<<< orphan*/  pszText; scalar_t__ cchTextMax; int /*<<< orphan*/  iItem; } ;
struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ id; int /*<<< orphan*/  title; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ SearchItem ;
typedef  TYPE_2__ LVITEMW ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;

/* Variables and functions */
 int LVIF_PARAM ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  LVM_DELETEALLITEMS ; 
 int /*<<< orphan*/  LVM_INSERTITEMW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(HWND hwndList, SearchItem *item)
{
    int index = 0;
    LVITEMW lvi;

    FUNC0(hwndList, LVM_DELETEALLITEMS, 0, 0);
    while(item) {
        FUNC1("list debug: %s\n", FUNC2(item->filename));

        FUNC4(&lvi, 0, sizeof(lvi));
        lvi.iItem = index++;
        lvi.mask = LVIF_TEXT|LVIF_PARAM;
        lvi.cchTextMax = FUNC3(item->title)+1;
        lvi.pszText = item->title;
        lvi.lParam = (LPARAM)item;
        item->id = (HTREEITEM)FUNC0(hwndList, LVM_INSERTITEMW, 0, (LPARAM)&lvi);
        item = item->next;
    }
}