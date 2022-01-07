
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_6__ {int * crColor; } ;
struct TYPE_8__ {scalar_t__* hbmpColor; TYPE_1__ SchemeAdv; } ;
struct TYPE_7__ {int left; int top; int right; int bottom; } ;
typedef TYPE_2__ RECT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ HGDIOBJ ;
typedef int HDC ;
typedef int HBRUSH ;
typedef TYPE_3__ GLOBALS ;


 int BM_SETIMAGE ;
 int CreateCompatibleDC (int ) ;
 int CreateSolidBrush (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int FillRect (int ,TYPE_2__*,int ) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int) ;
 scalar_t__ IMAGE_BITMAP ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendDlgItemMessage (int ,int,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static VOID
UpdateButtonColor(HWND hwndDlg, GLOBALS* g, INT ID, INT nButton, INT nColor)
{
    HDC hdcColorButton, hdcCompat;
    RECT rect;
    HBRUSH hbrush;
    HWND hwndColorButton;
    HGDIOBJ hgdiTmp;

    if (nColor != -1)
    {

        hwndColorButton = GetDlgItem(hwndDlg, ID);
        hdcColorButton = GetDC(hwndColorButton);
        hdcCompat = CreateCompatibleDC(hdcColorButton);
        ReleaseDC(hwndColorButton, hdcColorButton);


        hgdiTmp = SelectObject(hdcCompat, g->hbmpColor[nButton]);


        rect.left = 2;
        rect.top = 2;
        rect.right = 22;
        rect.bottom = 13;
        hbrush = CreateSolidBrush(g->SchemeAdv.crColor[nColor]);
        FillRect(hdcCompat, &rect, hbrush);
        DeleteObject(hbrush);


        SelectObject(hdcCompat,hgdiTmp);
        DeleteDC(hdcCompat);

        SendDlgItemMessage(hwndDlg, ID, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[nButton]);
        EnableWindow(GetDlgItem(hwndDlg, ID), TRUE);
    }
    else
    {
        SendDlgItemMessage(hwndDlg, ID, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)((void*)0));
        EnableWindow(GetDlgItem(hwndDlg, ID), FALSE);
    }
}
