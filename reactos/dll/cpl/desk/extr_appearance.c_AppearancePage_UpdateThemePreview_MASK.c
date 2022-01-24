#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ThemeActive; } ;
struct TYPE_4__ {int /*<<< orphan*/  Scheme; scalar_t__ hdcThemePreview; TYPE_2__ ActiveTheme; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ GLOBALS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_APPEARANCE_PREVIEW ; 
 int /*<<< orphan*/  PVM_SET_HDC_PREVIEW ; 
 int /*<<< orphan*/  PVM_UPDATETHEME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(HWND hwndDlg, GLOBALS *g)
{
    if (g->ActiveTheme.ThemeActive)
    {
        RECT rcWindow;

        FUNC1(FUNC2(hwndDlg, IDC_APPEARANCE_PREVIEW), &rcWindow);
        if (FUNC0(g->hdcThemePreview, &g->Scheme, &g->ActiveTheme, &rcWindow))
        {
            FUNC3(hwndDlg, IDC_APPEARANCE_PREVIEW, PVM_SET_HDC_PREVIEW, 0, (LPARAM)g->hdcThemePreview);
            return;
        }
    }

    FUNC3(hwndDlg, IDC_APPEARANCE_PREVIEW, PVM_UPDATETHEME, 0, (LPARAM)&g->Scheme);
    FUNC3(hwndDlg, IDC_APPEARANCE_PREVIEW, PVM_SET_HDC_PREVIEW, 0, 0);
}