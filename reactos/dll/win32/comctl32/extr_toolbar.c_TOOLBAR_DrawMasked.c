
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ INT ;
typedef int HIMAGELIST ;
typedef int HDC ;
typedef int HBITMAP ;


 int BitBlt (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 int COLOR_3DHILIGHT ;
 int COLOR_3DSHADOW ;
 int CreateBitmap (scalar_t__,scalar_t__,int,int,int *) ;
 int CreateCompatibleBitmap (int ,scalar_t__,scalar_t__) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GetSysColorBrush (int ) ;
 int ILD_MASK ;
 int ImageList_DrawEx (int ,int,int ,int ,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int ImageList_GetIconSize (int ,scalar_t__*,scalar_t__*) ;
 int NOTSRCERASE ;
 int RGB (int,int,int) ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;

__attribute__((used)) static void TOOLBAR_DrawMasked(HIMAGELIST himl, int index, HDC hdc, INT x, INT y, UINT draw_flags)
{
    INT cx, cy;
    HBITMAP hbmMask, hbmImage;
    HDC hdcMask, hdcImage;

    ImageList_GetIconSize(himl, &cx, &cy);


    hdcImage = CreateCompatibleDC(hdc);
    hbmImage = CreateCompatibleBitmap(hdc, cx, cy);
    SelectObject(hdcImage, hbmImage);
    ImageList_DrawEx(himl, index, hdcImage, 0, 0, cx, cy,
                     RGB(0xff, 0xff, 0xff), RGB(0,0,0), draw_flags);


    hdcMask = CreateCompatibleDC(0);
    hbmMask = CreateBitmap(cx, cy, 1, 1, ((void*)0));
    SelectObject(hdcMask, hbmMask);


    ImageList_DrawEx(himl, index, hdcMask, 0, 0, cx, cy,
                     RGB(0xff, 0xff, 0xff), RGB(0,0,0), ILD_MASK);
    SetBkColor(hdcImage, RGB(0xff, 0xff, 0xff));
    BitBlt(hdcMask, 0, 0, cx, cy, hdcImage, 0, 0, NOTSRCERASE);


    SetBkColor(hdc, RGB(255, 255, 255));
    SelectObject(hdc, GetSysColorBrush(COLOR_3DHILIGHT));

    BitBlt(hdc, x + 1, y + 1, cx, cy, hdcMask, 0, 0, 0xE20746);
    SelectObject(hdc, GetSysColorBrush(COLOR_3DSHADOW));
    BitBlt(hdc, x, y, cx, cy, hdcMask, 0, 0, 0xE20746);


    DeleteObject(hbmImage);
    DeleteDC(hdcImage);
    DeleteObject (hbmMask);
    DeleteDC(hdcMask);
}
