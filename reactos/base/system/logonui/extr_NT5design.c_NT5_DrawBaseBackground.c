
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ cy; scalar_t__ cx; int hInstance; } ;
struct TYPE_10__ {scalar_t__ bmHeight; int bmWidth; } ;
struct TYPE_9__ {int LowerRight; scalar_t__ UpperLeft; } ;
struct TYPE_8__ {int Red; int Green; int Blue; int Alpha; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ TRIVERTEX ;
typedef int * HDC ;
typedef int * HBRUSH ;
typedef int * HBITMAP ;
typedef TYPE_2__ GRADIENT_RECT ;
typedef int BOOL ;
typedef TYPE_3__ BITMAP ;


 int BitBlt (int *,int ,scalar_t__,int ,scalar_t__,int *,int ,int ,int ) ;
 int * CreateCompatibleBitmap (int *,scalar_t__,scalar_t__) ;
 int * CreateCompatibleDC (int *) ;
 int * CreateSolidBrush (int ) ;
 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int GRADIENT_FILL_RECT_H ;
 int GetObjectW (int *,int,TYPE_3__*) ;
 int GradientFill (int *,TYPE_1__*,int,TYPE_2__*,int,int ) ;
 int IDB_BOTTOM_DIVIDER_STRIP ;
 int IDB_MAIN_PANEL_SHINE ;
 int IDB_TOP_DIVIDER_STRIP ;
 int IMAGE_BITMAP ;
 int LR_DEFAULTCOLOR ;
 scalar_t__ LoadImage (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ LoadImageW (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int MAKEINTRESOURCEW (int ) ;
 scalar_t__ NT5_BOTTOM_BORDER_HEIGHT ;
 scalar_t__ NT5_TOP_BORDER_HEIGHT ;
 int PATCOPY ;
 int PatBlt (int *,int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int RGB (int,int,int) ;
 int SRCCOPY ;
 int SelectObject (int *,int *) ;
 int StretchBlt (int *,int ,scalar_t__,scalar_t__,scalar_t__,int *,int ,int ,int ,scalar_t__,int ) ;
 TYPE_4__* g_pInfo ;

HDC
NT5_DrawBaseBackground(HDC hdcDesktop)
{
    HBITMAP hBitmap = ((void*)0);
    HDC hdcMem = ((void*)0);
    BOOL bRet = FALSE;



    hdcMem = CreateCompatibleDC(hdcDesktop);
    if (hdcMem)
    {

        hBitmap = CreateCompatibleBitmap(hdcDesktop, g_pInfo->cx, g_pInfo->cy);
        if (hBitmap)
        {

            SelectObject(hdcMem, hBitmap);


            {
                HBITMAP hTempBitmap;
                HBRUSH hBrush;
                BITMAP bitmap;
                HDC hTempDC;


                hBrush = CreateSolidBrush(RGB(90, 126, 220));
                SelectObject(hdcMem, hBrush);
                PatBlt(hdcMem,
                        0,
                        NT5_TOP_BORDER_HEIGHT,
                        g_pInfo->cx,
                        g_pInfo->cy - NT5_TOP_BORDER_HEIGHT - NT5_BOTTOM_BORDER_HEIGHT,
                        PATCOPY);
                DeleteObject(hBrush);


                hTempBitmap = (HBITMAP)LoadImageW(g_pInfo->hInstance,
                                                    MAKEINTRESOURCEW(IDB_MAIN_PANEL_SHINE),
                                                    IMAGE_BITMAP,
                                                    0,
                                                    0,
                                                    LR_DEFAULTCOLOR);
                if (hTempBitmap)
                {

                    GetObjectW(hTempBitmap, sizeof(BITMAP), &bitmap);


                    hTempDC = CreateCompatibleDC(hdcDesktop);
                    if (hTempDC)
                    {

                        SelectObject(hTempDC, hTempBitmap);


                        BitBlt(hdcMem,
                                0,
                                NT5_TOP_BORDER_HEIGHT,
                                bitmap.bmWidth,
                                bitmap.bmHeight,
                                hTempDC,
                                0,
                                0,
                                SRCCOPY);


                        DeleteDC(hTempDC);
                    }


                    DeleteObject(hTempBitmap);
                }
            }


            {
                HBITMAP hTempBitmap;
                HBRUSH hBrush;
                BITMAP bitmap;
                HDC hTempDC;


                hBrush = CreateSolidBrush(RGB(0, 48, 156));
                SelectObject(hdcMem, hBrush);
                PatBlt(hdcMem, 0, 0, g_pInfo->cx, NT5_TOP_BORDER_HEIGHT, PATCOPY);
                DeleteObject(hBrush);


                hTempBitmap = (HBITMAP)LoadImageW(g_pInfo->hInstance,
                                                    MAKEINTRESOURCEW(IDB_TOP_DIVIDER_STRIP),
                                                    IMAGE_BITMAP,
                                                    0,
                                                    0,
                                                    LR_DEFAULTCOLOR);
                if (hTempBitmap)
                {

                    GetObjectW(hTempBitmap, sizeof(BITMAP), &bitmap);


                    hTempDC = CreateCompatibleDC(hdcDesktop);
                    if (hTempDC)
                    {

                        SelectObject(hTempDC, hTempBitmap);


                        StretchBlt(hdcMem,
                                    0,
                                    NT5_TOP_BORDER_HEIGHT - bitmap.bmHeight,
                                    g_pInfo->cx,
                                    NT5_TOP_BORDER_HEIGHT,
                                    hTempDC,
                                    0,
                                    0,
                                    bitmap.bmWidth,
                                    NT5_TOP_BORDER_HEIGHT,
                                    SRCCOPY);


                        DeleteDC(hTempDC);
                    }


                    DeleteObject(hTempBitmap);
                }
            }


            {
                HBITMAP hTempBitmap;
                TRIVERTEX vertex[2];
                GRADIENT_RECT gRect;
                BITMAP bitmap;
                HDC hTempDC;







                hTempBitmap = (HBITMAP)LoadImage(g_pInfo->hInstance,
                                                    MAKEINTRESOURCE(IDB_BOTTOM_DIVIDER_STRIP),
                                                    IMAGE_BITMAP,
                                                    0,
                                                    0,
                                                    LR_DEFAULTCOLOR);
                if (hTempBitmap)
                {

                    GetObjectW(hTempBitmap, sizeof(BITMAP), &bitmap);


                    hTempDC = CreateCompatibleDC(hdcDesktop);
                    if (hTempDC)
                    {

                        SelectObject(hTempDC, hTempBitmap);


                        StretchBlt(hdcMem,
                                    0,
                                    g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT,
                                    g_pInfo->cx,
                                    g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT + bitmap.bmHeight,
                                    hTempDC,
                                    0,
                                    0,
                                    bitmap.bmWidth,
                                    g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT + bitmap.bmHeight,
                                    SRCCOPY);


                        DeleteDC(hTempDC);
                    }


                    DeleteObject(hTempBitmap);
                }


                vertex[0].x = 0;
                vertex[0].y = g_pInfo->cy - NT5_BOTTOM_BORDER_HEIGHT + 2;
                vertex[0].Red = 0x3900;
                vertex[0].Green = 0x3400;
                vertex[0].Blue = 0xAE00;
                vertex[0].Alpha = 0x0000;


                vertex[1].x = g_pInfo->cx;
                vertex[1].y = g_pInfo->cy;
                vertex[1].Red = 0x0000;
                vertex[1].Green = 0x3000;
                vertex[1].Blue = 0x9600;
                vertex[1].Alpha = 0x0000;


                gRect.UpperLeft = 0;
                gRect.LowerRight = 1;


                GradientFill(hdcMem,
                                vertex,
                                2,
                                &gRect,
                                1,
                                GRADIENT_FILL_RECT_H);
            }


            DeleteObject(hBitmap);
        }
    }

    return hdcMem;
}
