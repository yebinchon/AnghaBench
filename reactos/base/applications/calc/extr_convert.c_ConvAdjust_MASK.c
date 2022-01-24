#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ unit; } ;
typedef  TYPE_1__ conv_t ;
struct TYPE_11__ {int /*<<< orphan*/  hInstance; } ;
struct TYPE_10__ {scalar_t__ category; TYPE_1__* items; } ;
typedef  TYPE_2__ TCHAR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  CB_RESETCONTENT ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_COMBO_CATEGORY ; 
 int /*<<< orphan*/  IDC_COMBO_FROM ; 
 int /*<<< orphan*/  IDC_COMBO_TO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,unsigned int) ; 
 unsigned int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_4__ calc ; 
 TYPE_2__* conv_table ; 

void FUNC6(HWND hWnd, int n_cat)
{
    TCHAR         txt[128];
    TCHAR         txt_cat[128];
    HWND          hFromWnd = FUNC0(hWnd, IDC_COMBO_FROM);
    HWND          hToWnd   = FUNC0(hWnd, IDC_COMBO_TO);
    const conv_t *item;
    unsigned int  n;

    FUNC3(hWnd, IDC_COMBO_CATEGORY, CB_GETLBTEXT, n_cat, (LPARAM)txt_cat);
    for (n=0; n<FUNC2(conv_table); n++) {
        item = conv_table[n].items;
        FUNC1(calc.hInstance, conv_table[n].category, txt, FUNC2(txt));
        if (!FUNC5(txt_cat, txt))
            break;
    }

    FUNC4(hFromWnd, CB_RESETCONTENT, 0, 0);
    FUNC4(hToWnd,   CB_RESETCONTENT, 0, 0);
    while (item->unit) {
        FUNC1(calc.hInstance, item->unit, txt, FUNC2(txt));
        FUNC4(hFromWnd, CB_ADDSTRING, 0, (LPARAM)txt);
        FUNC4(hToWnd,   CB_ADDSTRING, 0, (LPARAM)txt);
        item++;
    }
    FUNC4(hFromWnd, CB_SETCURSEL, 0, 0);
    FUNC4(hToWnd,   CB_SETCURSEL, 0, 0);
}