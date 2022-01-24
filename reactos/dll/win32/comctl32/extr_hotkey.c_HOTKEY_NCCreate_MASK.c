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
struct TYPE_3__ {int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  strNone; int /*<<< orphan*/  CaretPos; scalar_t__ CurrMod; scalar_t__ InvMod; scalar_t__ InvComb; scalar_t__ HotKey; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ HOTKEY_INFO ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CREATESTRUCTW ;

/* Variables and functions */
 int /*<<< orphan*/  COMCTL32_hModule ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKY_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WM_NCCREATE ; 
 int WS_EX_CLIENTEDGE ; 
 TYPE_1__* FUNC6 (int) ; 

__attribute__((used)) static inline LRESULT
FUNC7 (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    HOTKEY_INFO *infoPtr;
    DWORD dwExStyle = FUNC2 (hwnd, GWL_EXSTYLE);
    FUNC5 (hwnd, GWL_EXSTYLE, 
                    dwExStyle | WS_EX_CLIENTEDGE);

    /* allocate memory for info structure */
    infoPtr = FUNC6 (sizeof(*infoPtr));
    FUNC4(hwnd, 0, (DWORD_PTR)infoPtr);

    /* initialize info structure */
    infoPtr->HotKey = infoPtr->InvComb = infoPtr->InvMod = infoPtr->CurrMod = 0;
    infoPtr->CaretPos = FUNC1(SM_CXBORDER);
    infoPtr->hwndSelf = hwnd;
    FUNC3(COMCTL32_hModule, HKY_NONE, infoPtr->strNone, 15);

    return FUNC0 (infoPtr->hwndSelf, WM_NCCREATE, 0, (LPARAM)lpcs);
}