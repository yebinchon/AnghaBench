
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int bmp ;
struct TYPE_11__ {scalar_t__ bmHeight; scalar_t__ bmWidth; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_10__ {TYPE_1__ rcPaint; int hdc; } ;
struct TYPE_9__ {scalar_t__ CurrentY; scalar_t__ CurrentX; } ;
typedef TYPE_2__ SCROLLSTATE ;
typedef TYPE_3__ PAINTSTRUCT ;
typedef int LONG ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int DWORD ;
typedef TYPE_4__ BITMAP ;


 int BitBlt (int ,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int CF_BITMAP ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 scalar_t__ GetClipboardData (int ) ;
 int GetObjectW (scalar_t__,int,TYPE_4__*) ;
 int SelectObject (int ,scalar_t__) ;
 int min (scalar_t__,scalar_t__) ;

void BitBltFromClipboard(PAINTSTRUCT ps, SCROLLSTATE state, DWORD dwRop)
{
    HDC hdcMem;
    HBITMAP hBitmap;
    BITMAP bmp;
    LONG bmWidth, bmHeight;

    hdcMem = CreateCompatibleDC(ps.hdc);
    if (!hdcMem)
        return;

    hBitmap = (HBITMAP)GetClipboardData(CF_BITMAP);
    GetObjectW(hBitmap, sizeof(bmp), &bmp);

    SelectObject(hdcMem, hBitmap);

    bmWidth = min(ps.rcPaint.right - ps.rcPaint.left, bmp.bmWidth - ps.rcPaint.left - state.CurrentX);
    bmHeight = min(ps.rcPaint.bottom - ps.rcPaint.top , bmp.bmHeight - ps.rcPaint.top - state.CurrentY);

    BitBlt(ps.hdc,
           ps.rcPaint.left,
           ps.rcPaint.top,
           bmWidth,
           bmHeight,
           hdcMem,
           ps.rcPaint.left + state.CurrentX,
           ps.rcPaint.top + state.CurrentY,
           dwRop);

    DeleteDC(hdcMem);
}
