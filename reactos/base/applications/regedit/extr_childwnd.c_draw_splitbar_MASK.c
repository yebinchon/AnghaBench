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
struct TYPE_3__ {int left; int right; scalar_t__ top; scalar_t__ bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HGDIOBJ ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int,int const*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATINVERT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SPLIT_WIDTH ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SizingBrush ; 
 scalar_t__ SizingPattern ; 

__attribute__((used)) static void FUNC7(HWND hWnd, int x)
{
    RECT rt;
    HGDIOBJ OldObj;
    HDC hdc = FUNC3(hWnd);

    if(!SizingPattern)
    {
        const DWORD Pattern[4] = {0x5555AAAA, 0x5555AAAA, 0x5555AAAA, 0x5555AAAA};
        SizingPattern = FUNC0(8, 8, 1, 1, Pattern);
    }
    if(!SizingBrush)
    {
        SizingBrush = FUNC1(SizingPattern);
    }
    FUNC2(hWnd, &rt);
    rt.left = x - SPLIT_WIDTH/2;
    rt.right = x + SPLIT_WIDTH/2+1;
    OldObj = FUNC6(hdc, SizingBrush);
    FUNC4(hdc, rt.left, rt.top, rt.right - rt.left, rt.bottom - rt.top, PATINVERT);
    FUNC6(hdc, OldObj);
    FUNC5(hWnd, hdc);
}