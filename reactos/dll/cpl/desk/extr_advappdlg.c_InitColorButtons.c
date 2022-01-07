
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_11__ {int * crColor; } ;
struct TYPE_10__ {scalar_t__* hbmpColor; TYPE_4__ SchemeAdv; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef int LPARAM ;
typedef int INT ;
typedef int HWND ;
typedef scalar_t__ HPEN ;
typedef scalar_t__ HGDIOBJ ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;
typedef TYPE_3__ GLOBALS ;
typedef TYPE_4__ COLOR_SCHEME ;


 int BLACK_PEN ;
 int BM_SETIMAGE ;
 size_t COLOR_BTNFACE ;
 size_t COLOR_BTNHIGHLIGHT ;
 size_t COLOR_BTNSHADOW ;
 size_t COLOR_BTNTEXT ;
 scalar_t__ CreateCompatibleBitmap (int ,int,int) ;
 int CreateCompatibleDC (int ) ;
 scalar_t__ CreatePen (int ,int,int ) ;
 scalar_t__ CreateSolidBrush (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (scalar_t__) ;
 int FillRect (int ,TYPE_1__*,scalar_t__) ;
 int GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetStockObject (int ) ;
 int IDC_ADVAPPEARANCE_COLOR1_B ;
 int IDC_ADVAPPEARANCE_COLOR2_B ;
 int IDC_ADVAPPEARANCE_FONTCOLOR_B ;
 scalar_t__ IMAGE_BITMAP ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int *) ;
 int PS_SOLID ;
 int Polygon (int ,TYPE_2__ const*,int) ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SetPolyFillMode (int ,int ) ;
 int WINDING ;

__attribute__((used)) static VOID
InitColorButtons(HWND hwndDlg, GLOBALS* g)
{
    INT i;
    HDC hdcColorButton, hdcCompat;
    RECT rect;
    HBRUSH hbrush;
    HPEN hPen;
    HWND hwndColorButton;
    HGDIOBJ hgdiTemp;
    COLOR_SCHEME *scheme = &g->SchemeAdv;

    const POINT Points[3] = {{29,6},{33,6},{31,8}};

    hwndColorButton = GetDlgItem(hwndDlg, IDC_ADVAPPEARANCE_COLOR1_B);
    hdcColorButton = GetDC(hwndColorButton);
    for (i = 0; i <= 2; i++)
    {

        hdcCompat = CreateCompatibleDC(hdcColorButton);


        g->hbmpColor[i] = CreateCompatibleBitmap(hdcColorButton, 36, 15);


        hgdiTemp = SelectObject(hdcCompat, g->hbmpColor[i]);


        rect.left = 0;
        rect.top = 0;
        rect.right = 36;
        rect.bottom = 15;
        hbrush = CreateSolidBrush(scheme->crColor[COLOR_BTNFACE]);
        FillRect(hdcCompat, &rect, hbrush);
        DeleteObject(hbrush);


        rect.left = 1;
        rect.top = 1;
        rect.right = 23;
        rect.bottom = 14;
        hbrush = CreateSolidBrush(scheme->crColor[COLOR_BTNTEXT]);
        FillRect(hdcCompat, &rect, hbrush);
        DeleteObject(hbrush);


        hPen = CreatePen(PS_SOLID, 1, scheme->crColor[COLOR_BTNSHADOW]);
        SelectObject(hdcCompat, hPen);
        MoveToEx(hdcCompat, 26, 1, ((void*)0));
        LineTo(hdcCompat, 26, 14);
        SelectObject(hdcCompat, GetStockObject(BLACK_PEN));
        DeleteObject(hPen);


        hPen = CreatePen(PS_SOLID, 1, scheme->crColor[COLOR_BTNHIGHLIGHT]);
        SelectObject(hdcCompat,hPen);
        MoveToEx(hdcCompat, 27, 1, ((void*)0));
        LineTo(hdcCompat, 27, 14);
        SelectObject(hdcCompat, GetStockObject(BLACK_PEN));
        DeleteObject(hPen);


        hPen = CreatePen(PS_SOLID, 1, scheme->crColor[COLOR_BTNTEXT]);
        hbrush = CreateSolidBrush(scheme->crColor[COLOR_BTNTEXT]);
        SelectObject(hdcCompat, hPen);
        SelectObject(hdcCompat, hbrush);
        SetPolyFillMode(hdcCompat, WINDING);


        Polygon(hdcCompat, Points, 3);


        SelectObject(hdcCompat,hgdiTemp);
        DeleteDC(hdcCompat);
        DeleteObject(hPen);
        DeleteObject(hbrush);
    }

    ReleaseDC(hwndColorButton, hdcColorButton);


    SendDlgItemMessage(hwndDlg, IDC_ADVAPPEARANCE_COLOR1_B, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[0]);
    SendDlgItemMessage(hwndDlg, IDC_ADVAPPEARANCE_COLOR2_B, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[1]);
    SendDlgItemMessage(hwndDlg, IDC_ADVAPPEARANCE_FONTCOLOR_B, BM_SETIMAGE, (WPARAM)IMAGE_BITMAP, (LPARAM)g->hbmpColor[2]);
}
