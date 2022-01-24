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
typedef  int WORD ;
struct TYPE_5__ {unsigned int base; unsigned int degr; unsigned int size; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int mask; int /*<<< orphan*/  idc; } ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int BITMASK_BIN_MASK ; 
 int BITMASK_DEC_MASK ; 
 int BITMASK_HEX_MASK ; 
 int BITMASK_OCT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,int const,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  IDC_RADIO_BIN 131 
 int const IDC_RADIO_BYTE ; 
#define  IDC_RADIO_DEC 130 
 int const IDC_RADIO_DEG ; 
 int const IDC_RADIO_GRAD ; 
#define  IDC_RADIO_HEX 129 
#define  IDC_RADIO_OCT 128 
 int const IDC_RADIO_QWORD ; 
 int /*<<< orphan*/  IDR_MENU_SCIENTIFIC_1 ; 
 int /*<<< orphan*/  IDR_MENU_SCIENTIFIC_2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ calc ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* radio_setup ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(HWND hwnd, unsigned int base)
{
    HMENU   hMenu;
    LPCTSTR lpMenuId;
    WORD    mask;
    int     n;

    switch (base) {
    case IDC_RADIO_DEC:
        lpMenuId = FUNC5(IDR_MENU_SCIENTIFIC_1);
        mask = BITMASK_DEC_MASK;
        break;
    case IDC_RADIO_HEX:
        lpMenuId = FUNC5(IDR_MENU_SCIENTIFIC_2);
        mask = BITMASK_HEX_MASK;
        break;
    case IDC_RADIO_OCT:
        lpMenuId = FUNC5(IDR_MENU_SCIENTIFIC_2);
        mask = BITMASK_OCT_MASK;
        break;
    case IDC_RADIO_BIN:
        lpMenuId = FUNC5(IDR_MENU_SCIENTIFIC_2);
        mask = BITMASK_BIN_MASK;
        break;
    default:
        return;
    }

    if (calc.base != base) {
        FUNC10(&calc.code);
        FUNC9(base);
        calc.base = base;
        FUNC11(hwnd, &calc.code);

        hMenu = FUNC3(hwnd);
        FUNC1(hMenu);
        hMenu = FUNC4(calc.hInstance, lpMenuId);
        FUNC7(hwnd, hMenu);
        FUNC13(hwnd);

        for (n=0; n<FUNC6(radio_setup); n++)
            FUNC8(FUNC2(hwnd, radio_setup[n].idc), (radio_setup[n].mask & mask) ? SW_SHOW : SW_HIDE);

        FUNC12(hwnd, base);
    }

    FUNC0(hwnd, IDC_RADIO_HEX, IDC_RADIO_BIN, calc.base);

    if (base == IDC_RADIO_DEC)
        FUNC0(hwnd, IDC_RADIO_DEG, IDC_RADIO_GRAD, calc.degr);
    else
        FUNC0(hwnd, IDC_RADIO_QWORD, IDC_RADIO_BYTE, calc.size);
}