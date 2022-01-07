
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ unit; } ;
typedef TYPE_1__ conv_t ;
struct TYPE_11__ {int hInstance; } ;
struct TYPE_10__ {scalar_t__ category; TYPE_1__* items; } ;
typedef TYPE_2__ TCHAR ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_GETLBTEXT ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int GetDlgItem (int ,int ) ;
 int IDC_COMBO_CATEGORY ;
 int IDC_COMBO_FROM ;
 int IDC_COMBO_TO ;
 int LoadString (int ,scalar_t__,TYPE_2__*,unsigned int) ;
 unsigned int SIZEOF (TYPE_2__*) ;
 int SendDlgItemMessage (int ,int ,int ,int,int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 int _tcscmp (TYPE_2__*,TYPE_2__*) ;
 TYPE_4__ calc ;
 TYPE_2__* conv_table ;

void ConvAdjust(HWND hWnd, int n_cat)
{
    TCHAR txt[128];
    TCHAR txt_cat[128];
    HWND hFromWnd = GetDlgItem(hWnd, IDC_COMBO_FROM);
    HWND hToWnd = GetDlgItem(hWnd, IDC_COMBO_TO);
    const conv_t *item;
    unsigned int n;

    SendDlgItemMessage(hWnd, IDC_COMBO_CATEGORY, CB_GETLBTEXT, n_cat, (LPARAM)txt_cat);
    for (n=0; n<SIZEOF(conv_table); n++) {
        item = conv_table[n].items;
        LoadString(calc.hInstance, conv_table[n].category, txt, SIZEOF(txt));
        if (!_tcscmp(txt_cat, txt))
            break;
    }

    SendMessage(hFromWnd, CB_RESETCONTENT, 0, 0);
    SendMessage(hToWnd, CB_RESETCONTENT, 0, 0);
    while (item->unit) {
        LoadString(calc.hInstance, item->unit, txt, SIZEOF(txt));
        SendMessage(hFromWnd, CB_ADDSTRING, 0, (LPARAM)txt);
        SendMessage(hToWnd, CB_ADDSTRING, 0, (LPARAM)txt);
        item++;
    }
    SendMessage(hFromWnd, CB_SETCURSEL, 0, 0);
    SendMessage(hToWnd, CB_SETCURSEL, 0, 0);
}
