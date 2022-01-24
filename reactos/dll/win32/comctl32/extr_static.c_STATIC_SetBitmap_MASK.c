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
typedef  int /*<<< orphan*/  bm ;
struct TYPE_3__ {int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; } ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HBITMAP ;
typedef  int DWORD ;
typedef  TYPE_1__ BITMAP ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  HICON_GWL_OFFSET ; 
 scalar_t__ OBJ_BITMAP ; 
 int SS_BITMAP ; 
 int SS_CENTERIMAGE ; 
 int SS_REALSIZECONTROL ; 
 int SS_TYPEMASK ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static HBITMAP FUNC5( HWND hwnd, HBITMAP hBitmap, DWORD style )
{
    HBITMAP hOldBitmap;

    if ((style & SS_TYPEMASK) != SS_BITMAP) return 0;
    if (hBitmap && FUNC0(hBitmap) != OBJ_BITMAP)
    {
        FUNC4("hBitmap != 0, but it's not a bitmap\n");
        return 0;
    }
    hOldBitmap = (HBITMAP)FUNC2( hwnd, HICON_GWL_OFFSET, (LONG_PTR)hBitmap );
    if (hBitmap && !(style & SS_CENTERIMAGE) && !(style & SS_REALSIZECONTROL))
    {
        BITMAP bm;
        FUNC1(hBitmap, sizeof(bm), &bm);
        /* Windows currently doesn't implement SS_RIGHTJUST */
        /*
        if ((style & SS_RIGHTJUST) != 0)
        {
            RECT wr;
            GetWindowRect(hwnd, &wr);
            SetWindowPos( hwnd, 0, wr.right - bm.bmWidth, wr.bottom - bm.bmHeight,
                          bm.bmWidth, bm.bmHeight, SWP_NOACTIVATE | SWP_NOZORDER );
        }
        else */
        {
            FUNC3( hwnd, 0, 0, 0, bm.bmWidth, bm.bmHeight,
                          SWP_NOACTIVATE | SWP_NOMOVE | SWP_NOZORDER );
        }
    }
    return hOldBitmap;
}