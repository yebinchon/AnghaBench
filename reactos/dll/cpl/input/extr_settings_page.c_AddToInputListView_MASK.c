#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_11__ {int wFlags; TYPE_2__* pLayout; TYPE_1__* pLocale; int /*<<< orphan*/  pszIndicator; } ;
struct TYPE_10__ {int mask; int iImage; scalar_t__ lParam; scalar_t__ iItem; int /*<<< orphan*/  pszText; } ;
struct TYPE_9__ {int /*<<< orphan*/  pszName; } ;
struct TYPE_8__ {int /*<<< orphan*/  pszName; } ;
typedef  TYPE_3__ LV_ITEM ;
typedef  scalar_t__ LPARAM ;
typedef  int INT ;
typedef  TYPE_4__ INPUT_LIST_NODE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int INPUT_LIST_NODE_FLAG_DEFAULT ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int LVIF_IMAGE ; 
 int LVIF_PARAM ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  LVSIL_SMALL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 

__attribute__((used)) static VOID
FUNC8(HWND hwndList, INPUT_LIST_NODE *pInputNode)
{
    INT ItemIndex = -1;
    INT ImageIndex = -1;
    LV_ITEM item;
    HIMAGELIST hImageList;

    hImageList = FUNC3(hwndList, LVSIL_SMALL);

    if (hImageList != NULL)
    {
        HICON hLayoutIcon;

        hLayoutIcon = FUNC0(pInputNode->pszIndicator,
                                       (pInputNode->wFlags & INPUT_LIST_NODE_FLAG_DEFAULT));

        if (hLayoutIcon != NULL)
        {
            ImageIndex = FUNC2(hImageList, hLayoutIcon);
            FUNC1(hLayoutIcon);
        }
    }

    FUNC7(&item, sizeof(item));

    item.mask    = LVIF_TEXT | LVIF_PARAM | LVIF_IMAGE;
    item.pszText = pInputNode->pLocale->pszName;
    item.iItem   = FUNC4(hwndList) + 1;
    item.lParam  = (LPARAM)pInputNode;
    item.iImage  = ImageIndex;

    ItemIndex = FUNC5(hwndList, &item);

    FUNC6(hwndList, ItemIndex, 1, pInputNode->pLayout->pszName);
}