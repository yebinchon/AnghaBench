
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int hInstance; } ;
struct TYPE_6__ {int category; } ;
typedef TYPE_1__ TCHAR ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int ConvAdjust (int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_COMBO_CATEGORY ;
 int LoadString (int ,int ,TYPE_1__*,unsigned int) ;
 unsigned int SIZEOF (TYPE_1__*) ;
 int SendMessage (int ,int ,int ,int ) ;
 TYPE_3__ calc ;
 TYPE_1__* conv_table ;

void ConvInit(HWND hWnd)
{
    HWND hCatWnd = GetDlgItem(hWnd, IDC_COMBO_CATEGORY);
    TCHAR txt[128];
    unsigned int n;


    for (n=0; n<SIZEOF(conv_table); n++) {
        LoadString(calc.hInstance, conv_table[n].category, txt, SIZEOF(txt));
        SendMessage(hCatWnd, CB_ADDSTRING, 0, (LPARAM)txt);
    }
    SendMessage(hCatWnd, CB_SETCURSEL, 0, 0);
    ConvAdjust(hWnd, 0);
}
