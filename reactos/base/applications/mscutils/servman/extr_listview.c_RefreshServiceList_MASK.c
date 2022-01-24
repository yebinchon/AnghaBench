#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  lpDisplayName; } ;
struct TYPE_12__ {int mask; int /*<<< orphan*/  iItem; scalar_t__ lParam; int /*<<< orphan*/  pszText; } ;
struct TYPE_11__ {size_t NumServices; int /*<<< orphan*/  hListView; TYPE_3__* pAllServices; } ;
typedef  TYPE_1__* PMAIN_WND_INFO ;
typedef  TYPE_2__ LVITEMW ;
typedef  scalar_t__ LPARAM ;
typedef  scalar_t__ INT ;
typedef  TYPE_3__ ENUM_SERVICE_STATUS_PROCESS ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ LVDESC ; 
 int LVIF_PARAM ; 
 int LVIF_TEXT ; 
 scalar_t__ LVLOGONAS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  WM_SETREDRAW ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

BOOL
FUNC8(PMAIN_WND_INFO Info)
{
    ENUM_SERVICE_STATUS_PROCESS *pService;
    LVITEMW lvItem;
    DWORD Index;

    FUNC4 (Info->hListView,
                 WM_SETREDRAW,
                 FALSE,
                 0);

    (void)FUNC2(Info->hListView);

    if (FUNC1(Info))
    {
        for (Index = 0; Index < Info->NumServices; Index++)
        {
            INT i;

            pService = &Info->pAllServices[Index];

            /* set the display name */
            FUNC7(&lvItem, sizeof(LVITEMW));
            lvItem.mask = LVIF_TEXT | LVIF_PARAM;
            lvItem.pszText = pService->lpDisplayName;

            /* Add the service pointer */
            lvItem.lParam = (LPARAM)pService;

            /* add it to the listview */
            lvItem.iItem = FUNC3(Info->hListView, &lvItem);

            /* fill out all the column data */
            for (i = LVDESC; i <= LVLOGONAS; i++)
            {
                FUNC0(Info, pService, i);
            }
        }

        FUNC6(Info);
    }

    /* turn redraw flag on. */
    FUNC5(Info->hListView,
                 WM_SETREDRAW,
                 TRUE,
                 0);

    return TRUE;
}