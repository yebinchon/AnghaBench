
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int * hbmColor; int * hbmMask; int fIcon; } ;
struct TYPE_5__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ ICONINFO ;
typedef int * HICON ;
typedef int * HDC ;
typedef int * HBRUSH ;
typedef int * HBITMAP ;


 int * CreateCompatibleDC (int *) ;
 int * CreateIconIndirect (TYPE_2__*) ;
 int * CreateSolidBrush (int ) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int FillRect (int *,TYPE_1__*,int *) ;
 int * GetDC (int *) ;
 int IDB_TRAYICON ;
 int IDB_TRAYMASK ;
 int * LoadBitmapW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int PerfDataGetProcessorUsage () ;
 int RGB (int ,int,int ) ;
 int ReleaseDC (int *,int *) ;
 int * SelectObject (int *,int *) ;
 int TRUE ;
 int hInst ;

HICON TrayIcon_GetProcessorUsageIcon(void)
{
    HICON hTrayIcon = ((void*)0);
    HDC hScreenDC = ((void*)0);
    HDC hDC = ((void*)0);
    HBITMAP hBitmap = ((void*)0);
    HBITMAP hOldBitmap = ((void*)0);
    HBITMAP hBitmapMask = ((void*)0);
    ICONINFO iconInfo;
    ULONG ProcessorUsage;
    int nLinesToDraw;
    HBRUSH hBitmapBrush = ((void*)0);
    RECT rc;




    hScreenDC = GetDC(((void*)0));
    if (!hScreenDC)
        goto done;




    hDC = CreateCompatibleDC(hScreenDC);
    if (!hDC)
        goto done;




    hBitmap = LoadBitmapW(hInst, MAKEINTRESOURCEW(IDB_TRAYICON));
    hBitmapMask = LoadBitmapW(hInst, MAKEINTRESOURCEW(IDB_TRAYMASK));
    if (!hBitmap || !hBitmapMask)
        goto done;

    hBitmapBrush = CreateSolidBrush(RGB(0, 255, 0));
    if (!hBitmapBrush)
        goto done;





    hOldBitmap = (HBITMAP) SelectObject(hDC, hBitmap);




    ProcessorUsage = PerfDataGetProcessorUsage();







    nLinesToDraw = (ProcessorUsage + (ProcessorUsage / 10)) / 11;
    rc.left = 3;
    rc.top = 12 - nLinesToDraw;
    rc.right = 13;
    rc.bottom = 13;




    if (nLinesToDraw)
        FillRect(hDC, &rc, hBitmapBrush);





    hBitmap = SelectObject(hDC, hOldBitmap);
    hOldBitmap = ((void*)0);

    iconInfo.fIcon = TRUE;
    iconInfo.hbmMask = hBitmapMask;
    iconInfo.hbmColor = hBitmap;

    hTrayIcon = CreateIconIndirect(&iconInfo);

done:



    if (hScreenDC)
        ReleaseDC(((void*)0), hScreenDC);
    if (hDC)
        DeleteDC(hDC);
    if (hBitmapBrush)
        DeleteObject(hBitmapBrush);
    if (hBitmap)
        DeleteObject(hBitmap);
    if (hBitmapMask)
        DeleteObject(hBitmapMask);




    return hTrayIcon;
}
