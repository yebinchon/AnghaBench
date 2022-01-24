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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  hListView; } ;
typedef  TYPE_1__* PMAIN_WND_INFO ;
typedef  scalar_t__ HIMAGELIST ;
typedef  scalar_t__ HICON ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDI_SM_ICON ; 
 int ILC_COLOR32 ; 
 int ILC_MASK ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  LVSIL_NORMAL ; 
 int /*<<< orphan*/  LVSIL_SMALL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXICON ; 
 int /*<<< orphan*/  SM_CXSMICON ; 
 int /*<<< orphan*/  SM_CYICON ; 
 int /*<<< orphan*/  SM_CYSMICON ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static VOID
FUNC7(PMAIN_WND_INFO Info)
{
    HICON hSmIconItem, hLgIconItem;
    HIMAGELIST hSmall, hLarge;

    hSmall = FUNC3(FUNC1(SM_CXSMICON),
                              FUNC1(SM_CYSMICON),
                              ILC_MASK | ILC_COLOR32,
                              1,
                              1);
    if (hSmall)
    {
        hSmIconItem = FUNC5(hInstance,
                                 FUNC6(IDI_SM_ICON),
                                 IMAGE_ICON,
                                 16,
                                 16,
                                 0);
        if (hSmIconItem)
        {
            FUNC2(hSmall,
                              hSmIconItem);
            (void)FUNC4(Info->hListView,
                                        hSmall,
                                        LVSIL_SMALL);

            FUNC0(hSmIconItem);
        }
    }

    hLarge = FUNC3(FUNC1(SM_CXICON),
                              FUNC1(SM_CYICON),
                              ILC_MASK | ILC_COLOR32,
                              1,
                              1);
    if (hLarge)
    {
        hLgIconItem = FUNC5(hInstance,
                                 FUNC6(IDI_SM_ICON),
                                 IMAGE_ICON,
                                 32,
                                 32,
                                 0);
        if (hLgIconItem)
        {
            FUNC2(hLarge,
                              hLgIconItem);
            (void)FUNC4(Info->hListView,
                                        hLarge,
                                        LVSIL_NORMAL);
            FUNC0(hLgIconItem);
        }
    }
}