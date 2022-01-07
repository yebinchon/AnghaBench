
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ formula_to; scalar_t__ formula_from; scalar_t__ unit; } ;
typedef TYPE_2__ conv_t ;
struct TYPE_13__ {TYPE_1__* Convert; int hInstance; } ;
struct TYPE_12__ {TYPE_2__* items; scalar_t__ category; } ;
struct TYPE_10__ {char* data; int wm_msg; } ;
typedef TYPE_3__ TCHAR ;
typedef int LPARAM ;
typedef int HWND ;
typedef size_t DWORD ;


 int CB_GETCURSEL ;
 int CB_GETLBTEXT ;
 int IDC_COMBO_CATEGORY ;
 int IDC_COMBO_FROM ;
 int IDC_COMBO_TO ;
 int LoadString (int ,scalar_t__,TYPE_3__*,size_t) ;
 int MAKELPARAM (int ,int ) ;
 int PostMessage (int ,int ,int ,int ) ;
 size_t SIZEOF (TYPE_3__*) ;
 size_t SendDlgItemMessage (int ,int ,int ,size_t,int ) ;
 int WM_HANDLE_FROM ;
 int WM_HANDLE_TO ;
 int WM_START_CONV ;
 int _tcscmp (TYPE_3__*,TYPE_3__*) ;
 TYPE_5__ calc ;
 TYPE_3__* conv_table ;

void ConvExecute(HWND hWnd)
{
    DWORD c_cat = (DWORD)SendDlgItemMessage(hWnd, IDC_COMBO_CATEGORY, CB_GETCURSEL, 0, 0);
    const conv_t *items = ((void*)0);
    DWORD from = SendDlgItemMessage(hWnd, IDC_COMBO_FROM, CB_GETCURSEL, 0, 0);
    DWORD to = SendDlgItemMessage(hWnd, IDC_COMBO_TO, CB_GETCURSEL, 0, 0);
    TCHAR txt_cb[128];
    TCHAR txt[128];
    const conv_t *item;


    if (from == to)
        return;


    SendDlgItemMessage(hWnd, IDC_COMBO_CATEGORY, CB_GETLBTEXT, c_cat, (LPARAM)txt_cb);
    for (c_cat=0; c_cat < SIZEOF(conv_table); c_cat++) {
        LoadString(calc.hInstance, conv_table[c_cat].category, txt, SIZEOF(txt));
        if (!_tcscmp(txt_cb, txt)) {
            items = conv_table[c_cat].items;
            break;
        }
    }


    item = items;
    SendDlgItemMessage(hWnd, IDC_COMBO_FROM, CB_GETLBTEXT, from, (LPARAM)txt_cb);
    while (item->unit) {
        LoadString(calc.hInstance, item->unit, txt, SIZEOF(txt));
        if (!_tcscmp(txt_cb, txt)) {
            from = item-items;
            break;
        }
        item++;
    }
    SendDlgItemMessage(hWnd, IDC_COMBO_TO, CB_GETLBTEXT, to, (LPARAM)txt_cb);
    item = items;
    while (item->unit) {
        LoadString(calc.hInstance, item->unit, txt, SIZEOF(txt));
        if (!_tcscmp(txt_cb, txt)) {
            to = item-items;
            break;
        }
        item++;
    }

    calc.Convert[0].data = (char *)items[from].formula_from;
    calc.Convert[1].data = (char *)items[to].formula_to;
    calc.Convert[0].wm_msg = WM_HANDLE_FROM;
    calc.Convert[1].wm_msg = WM_HANDLE_TO;
    PostMessage(hWnd, WM_START_CONV, 0, MAKELPARAM(0, WM_HANDLE_FROM));
}
