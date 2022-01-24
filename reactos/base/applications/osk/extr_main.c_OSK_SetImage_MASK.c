#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_2__ {int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hInstance; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/ * HICON ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETIMAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ Globals ; 
 scalar_t__ IMAGE_ICON ; 
 int /*<<< orphan*/  LR_DEFAULTCOLOR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TRUE ; 

int FUNC5(int IdDlgItem, int IdResource)
{
    HICON hIcon;
    HWND hWndItem;

    hIcon = (HICON)FUNC2(Globals.hInstance, FUNC3(IdResource),
                              IMAGE_ICON, 16, 16, LR_DEFAULTCOLOR);
    if (hIcon == NULL)
        return FALSE;

    hWndItem = FUNC1(Globals.hMainWnd, IdDlgItem);
    if (hWndItem == NULL)
    {
        FUNC0(hIcon);
        return FALSE;
    }

    FUNC4(hWndItem, BM_SETIMAGE, (WPARAM)IMAGE_ICON, (LPARAM)hIcon);

    /* The system automatically deletes these resources when the process that created them terminates (MSDN) */

    return TRUE;
}