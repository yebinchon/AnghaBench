
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {unsigned int base; unsigned int degr; unsigned int size; int hInstance; int code; } ;
struct TYPE_4__ {int mask; int idc; } ;
typedef int LPCTSTR ;
typedef int HWND ;
typedef int HMENU ;


 int BITMASK_BIN_MASK ;
 int BITMASK_DEC_MASK ;
 int BITMASK_HEX_MASK ;
 int BITMASK_OCT_MASK ;
 int CheckRadioButton (int ,int const,int const,unsigned int) ;
 int DestroyMenu (int ) ;
 int GetDlgItem (int ,int ) ;
 int GetMenu (int ) ;

 int const IDC_RADIO_BYTE ;

 int const IDC_RADIO_DEG ;
 int const IDC_RADIO_GRAD ;


 int const IDC_RADIO_QWORD ;
 int IDR_MENU_SCIENTIFIC_1 ;
 int IDR_MENU_SCIENTIFIC_2 ;
 int LoadMenu (int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int SIZEOF (TYPE_1__*) ;
 int SW_HIDE ;
 int SW_SHOW ;
 int SetMenu (int ,int ) ;
 int ShowWindow (int ,int ) ;
 TYPE_2__ calc ;
 int convert_real_integer (unsigned int) ;
 int convert_text2number (int *) ;
 int display_rpn_result (int ,int *) ;
 int enable_allowed_controls (int ,unsigned int) ;
 TYPE_1__* radio_setup ;
 int update_menu (int ) ;

__attribute__((used)) static void update_radio(HWND hwnd, unsigned int base)
{
    HMENU hMenu;
    LPCTSTR lpMenuId;
    WORD mask;
    int n;

    switch (base) {
    case 130:
        lpMenuId = MAKEINTRESOURCE(IDR_MENU_SCIENTIFIC_1);
        mask = BITMASK_DEC_MASK;
        break;
    case 129:
        lpMenuId = MAKEINTRESOURCE(IDR_MENU_SCIENTIFIC_2);
        mask = BITMASK_HEX_MASK;
        break;
    case 128:
        lpMenuId = MAKEINTRESOURCE(IDR_MENU_SCIENTIFIC_2);
        mask = BITMASK_OCT_MASK;
        break;
    case 131:
        lpMenuId = MAKEINTRESOURCE(IDR_MENU_SCIENTIFIC_2);
        mask = BITMASK_BIN_MASK;
        break;
    default:
        return;
    }

    if (calc.base != base) {
        convert_text2number(&calc.code);
        convert_real_integer(base);
        calc.base = base;
        display_rpn_result(hwnd, &calc.code);

        hMenu = GetMenu(hwnd);
        DestroyMenu(hMenu);
        hMenu = LoadMenu(calc.hInstance, lpMenuId);
        SetMenu(hwnd, hMenu);
        update_menu(hwnd);

        for (n=0; n<SIZEOF(radio_setup); n++)
            ShowWindow(GetDlgItem(hwnd, radio_setup[n].idc), (radio_setup[n].mask & mask) ? SW_SHOW : SW_HIDE);

        enable_allowed_controls(hwnd, base);
    }

    CheckRadioButton(hwnd, 129, 131, calc.base);

    if (base == 130)
        CheckRadioButton(hwnd, IDC_RADIO_DEG, IDC_RADIO_GRAD, calc.degr);
    else
        CheckRadioButton(hwnd, IDC_RADIO_QWORD, IDC_RADIO_BYTE, calc.size);
}
