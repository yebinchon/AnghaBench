#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  uNumItems; } ;
struct TYPE_14__ {scalar_t__ pszText; scalar_t__ firstChild; } ;
typedef  TYPE_1__ TREEVIEW_ITEM ;
typedef  TYPE_2__ TREEVIEW_INFO ;

/* Variables and functions */
 scalar_t__ LPSTR_TEXTCALLBACKW ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  TVC_UNKNOWN ; 
 int TVIF_HANDLE ; 
 int TVIF_PARAM ; 
 int /*<<< orphan*/  TVN_DELETEITEMW ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{
    FUNC0("%p, (%s)\n", item, FUNC2(item));

    if (item->firstChild)
	FUNC3(infoPtr, item);

    FUNC4(infoPtr, TVN_DELETEITEMW, TVC_UNKNOWN,
				TVIF_HANDLE | TVIF_PARAM, item, 0);

    FUNC5(item);

    infoPtr->uNumItems--;

    if (item->pszText != LPSTR_TEXTCALLBACKW)
        FUNC6(item->pszText);

    FUNC1(infoPtr, item);
}