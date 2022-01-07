
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int dwFlags; } ;
struct TYPE_10__ {int dwFlags; } ;
struct TYPE_12__ {TYPE_1__ ppshheader; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_11__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ PropSheetInfo ;
typedef int LPPOINT ;
typedef TYPE_4__* LPCPROPSHEETPAGEW ;
typedef int LPARAM ;
typedef int HWND ;


 int FALSE ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_SUNKEN_LINEHEADER ;
 int IDC_TABCONTROL ;
 int INTRNL_ANY_WIZARD ;
 int MapDialogRect (int ,TYPE_2__*) ;
 int MapWindowPoints (int ,int ,int ,int) ;
 int PSH_HEADER ;
 int PSH_WIZARD ;
 int PSH_WIZARD97_NEW ;
 int PSH_WIZARD97_OLD ;
 int PSP_HIDEHEADER ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TCM_ADJUSTRECT ;
 scalar_t__ WIZARD_PADDING ;

__attribute__((used)) static void PROPSHEET_GetPageRect(const PropSheetInfo * psInfo, HWND hwndDlg,
                                  RECT *rc, LPCPROPSHEETPAGEW ppshpage)
{
    if (psInfo->ppshheader.dwFlags & INTRNL_ANY_WIZARD) {
        HWND hwndChild;
        RECT r;

        if (((psInfo->ppshheader.dwFlags & (PSH_WIZARD97_NEW | PSH_WIZARD97_OLD)) &&
             (psInfo->ppshheader.dwFlags & PSH_HEADER) &&
             !(ppshpage->dwFlags & PSP_HIDEHEADER)) ||
            (psInfo->ppshheader.dwFlags & PSH_WIZARD))
        {
            rc->left = rc->top = WIZARD_PADDING;
        }
        else
        {
            rc->left = rc->top = 0;
        }
        rc->right = psInfo->width - rc->left;
        rc->bottom = psInfo->height - rc->top;
        MapDialogRect(hwndDlg, rc);

        if ((psInfo->ppshheader.dwFlags & (PSH_WIZARD97_NEW | PSH_WIZARD97_OLD)) &&
            (psInfo->ppshheader.dwFlags & PSH_HEADER) &&
            !(ppshpage->dwFlags & PSP_HIDEHEADER))
        {
            hwndChild = GetDlgItem(hwndDlg, IDC_SUNKEN_LINEHEADER);
            GetClientRect(hwndChild, &r);
            MapWindowPoints(hwndChild, hwndDlg, (LPPOINT) &r, 2);
            rc->top += r.bottom + 1;
        }
    } else {
        HWND hwndTabCtrl = GetDlgItem(hwndDlg, IDC_TABCONTROL);
        GetClientRect(hwndTabCtrl, rc);
        SendMessageW(hwndTabCtrl, TCM_ADJUSTRECT, FALSE, (LPARAM)rc);
        MapWindowPoints(hwndTabCtrl, hwndDlg, (LPPOINT)rc, 2);
    }
}
