#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/  hwndCombo; } ;
struct TYPE_6__ {int /*<<< orphan*/  cy; } ;
typedef  TYPE_1__ SIZE ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ COMBOEX_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETFONT ; 

__attribute__((used)) static void FUNC6 (const COMBOEX_INFO *infoPtr, SIZE *size)
{
    static const WCHAR strA[] = { 'A', 0 };
    HFONT nfont, ofont;
    HDC mydc;

    mydc = FUNC0 (0); /* why the entire screen???? */
    nfont = (HFONT)FUNC4 (infoPtr->hwndCombo, WM_GETFONT, 0, 0);
    ofont = FUNC3 (mydc, nfont);
    FUNC1 (mydc, strA, 1, size);
    FUNC3 (mydc, ofont);
    FUNC2 (0, mydc);
    FUNC5("selected font hwnd=%p, height=%d\n", nfont, size->cy);
}