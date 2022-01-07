
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int cx; int cy; int hInstance; } ;
struct TYPE_4__ {int bmHeight; int bmWidth; } ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_1__ BITMAP ;


 int BitBlt (scalar_t__,int,int,int ,int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 int DeleteDC (scalar_t__) ;
 int DeleteObject (scalar_t__) ;
 int GetObjectW (scalar_t__,int,TYPE_1__*) ;
 int IDB_MAIN_ROS_LOGO ;
 int IMAGE_BITMAP ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImageW (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int SRCCOPY ;
 int SelectObject (scalar_t__,scalar_t__) ;
 TYPE_2__* g_pInfo ;

__attribute__((used)) static VOID
NT5_DrawLogoffIcon(HDC hdcMem)
{
    HBITMAP hBitmap;
    BITMAP bitmap;
    HDC hTempDC;


    hBitmap = (HBITMAP)LoadImageW(g_pInfo->hInstance,
                                  MAKEINTRESOURCEW(IDB_MAIN_ROS_LOGO),
                                  IMAGE_BITMAP,
                                  0,
                                  0,
                                  LR_DEFAULTCOLOR);
    if (hBitmap)
    {

        GetObjectW(hBitmap, sizeof(BITMAP), &bitmap);


        hTempDC = CreateCompatibleDC(hdcMem);
        if (hTempDC)
        {

            SelectObject(hTempDC, hBitmap);


            BitBlt(hdcMem,
                   (g_pInfo->cx / 2) + 35,
                   (g_pInfo->cy / 2) - 72,
                   bitmap.bmWidth,
                   bitmap.bmHeight,
                   hTempDC,
                   0,
                   0,
                   SRCCOPY);


            DeleteDC(hTempDC);
        }


        DeleteObject(hBitmap);
    }
}
