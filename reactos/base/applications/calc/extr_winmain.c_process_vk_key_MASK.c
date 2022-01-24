#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int key; int mask; int /*<<< orphan*/  idc; } ;
typedef  TYPE_1__ key2code_t ;
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_8__ {scalar_t__ layout; scalar_t__ base; int /*<<< orphan*/  hWnd; } ;
typedef  int LPARAM ;

/* Variables and functions */
 int BITMASK_IS_ASCII ; 
 int BITMASK_IS_CTRL ; 
 scalar_t__ CALC_LAYOUT_SCIENTIFIC ; 
 unsigned short CTRL_C ; 
 unsigned short CTRL_FLAG ; 
 unsigned short CTRL_V ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_RADIO_DEC ; 
 int /*<<< orphan*/  IDM_EDIT_COPY ; 
 int /*<<< orphan*/  IDM_EDIT_PASTE ; 
 int /*<<< orphan*/  IDM_HELP_HELP ; 
 int KEY_IS_UP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VK_F1 ; 
 int /*<<< orphan*/  WM_COMMAND ; 
 TYPE_5__ calc ; 
 TYPE_1__* key2code ; 
 TYPE_1__* key2code_base10 ; 
 TYPE_1__* key2code_base16 ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 unsigned short FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(WPARAM wParam, LPARAM lParam)
{
    const key2code_t *k;
    unsigned int x;
    unsigned short int ch;

    ch = FUNC5(FUNC1(wParam));
    if ((lParam & KEY_IS_UP)) {
        /* Test for "copy" to clipboard */
        if (ch == (CTRL_C|CTRL_FLAG)) {
            FUNC3(calc.hWnd, WM_COMMAND, IDM_EDIT_COPY, 0);
            return 1;
        }
        /* Test for "paste" from clipboard */
        if (ch == (CTRL_V|CTRL_FLAG)) {
            FUNC3(calc.hWnd, WM_COMMAND, IDM_EDIT_PASTE, 0);
            return 1;
        }
        /* Test of help menu */
        if (FUNC1(wParam) == VK_F1) {
            FUNC3(calc.hWnd, WM_COMMAND, IDM_HELP_HELP, 0);
            return 1;
        }
    }

    for (x=0; x<FUNC2(key2code); x++) {
        int key = key2code[x].key;
        if (key2code[x].mask & BITMASK_IS_CTRL)
            key |= CTRL_FLAG;
        if ((key == ch             &&  (key2code[x].mask & BITMASK_IS_ASCII)) ||
            (key == FUNC1(wParam) && !(key2code[x].mask & BITMASK_IS_ASCII))
           ) {
            if (FUNC0(calc.hWnd, key2code[x].idc) == NULL)
                continue;
            return FUNC4(lParam, key2code[x].idc);
        }
    }
    if (calc.layout == CALC_LAYOUT_SCIENTIFIC) {
        if (calc.base == IDC_RADIO_DEC) {
            k = key2code_base10;
            x = FUNC2(key2code_base10);
        } else {
            k = key2code_base16;
            x = FUNC2(key2code_base16);
        }
        do {
            if (k->key == FUNC1(wParam)) {
                return FUNC4(lParam, k->idc);
            }
            k++;
        } while (--x);
    }
    return 0;
}