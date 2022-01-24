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
struct TYPE_6__ {struct TYPE_6__* next; scalar_t__ id; scalar_t__ keyword; int /*<<< orphan*/  indentLevel; } ;
struct TYPE_5__ {int mask; scalar_t__ lParam; scalar_t__ pszText; scalar_t__ cchTextMax; int /*<<< orphan*/  iIndent; int /*<<< orphan*/  iItem; } ;
typedef  TYPE_1__ LVITEMW ;
typedef  scalar_t__ LPARAM ;
typedef  TYPE_2__ IndexItem ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LVIF_INDENT ; 
 int LVIF_PARAM ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  LVM_INSERTITEMW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(HWND hwnd, IndexItem *item)
{
    int index = 0;
    LVITEMW lvi;

    while(item) {
        FUNC2("tree debug: %s\n", FUNC3(item->keyword));

        if(!item->keyword)
        {
            FUNC0("HTML Help index item has no keyword.\n");
            item = item->next;
            continue;
        }
        FUNC5(&lvi, 0, sizeof(lvi));
        lvi.iItem = index++;
        lvi.mask = LVIF_TEXT|LVIF_PARAM|LVIF_INDENT;
        lvi.iIndent = item->indentLevel;
        lvi.cchTextMax = FUNC4(item->keyword)+1;
        lvi.pszText = item->keyword;
        lvi.lParam = (LPARAM)item;
        item->id = (HTREEITEM)FUNC1(hwnd, LVM_INSERTITEMW, 0, (LPARAM)&lvi);
        item = item->next;
    }
}