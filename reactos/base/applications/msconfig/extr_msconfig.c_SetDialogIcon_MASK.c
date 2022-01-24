#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ICON_BIG ; 
 int /*<<< orphan*/  ICON_SMALL ; 
 int /*<<< orphan*/  IDI_APPICON ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETICON ; 
 scalar_t__ hDialogIconBig ; 
 scalar_t__ hDialogIconSmall ; 
 int /*<<< orphan*/  uXIcon ; 
 int /*<<< orphan*/  uYIcon ; 

__attribute__((used)) static
VOID
FUNC6(HWND hDlg)
{
    if (hDialogIconBig) FUNC0(hDialogIconBig);
    if (hDialogIconSmall) FUNC0(hDialogIconSmall);

    hDialogIconBig = FUNC2(FUNC1(NULL),
                               FUNC4(IDI_APPICON));
    hDialogIconSmall = FUNC3(FUNC1(NULL),
                                 FUNC4(IDI_APPICON),
                                 IMAGE_ICON,
                                 uXIcon,
                                 uYIcon,
                                 0);
    FUNC5(hDlg,
                WM_SETICON,
                ICON_BIG,
                (LPARAM)hDialogIconBig);
    FUNC5(hDlg,
                WM_SETICON,
                ICON_SMALL,
                (LPARAM)hDialogIconSmall);
}