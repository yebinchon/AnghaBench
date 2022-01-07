
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_nClientHeight; int m_nClientWidth; int * m_dcPlot; int * m_dcGrid; } ;
typedef TYPE_1__ TGraphCtrl ;
typedef int HWND ;
typedef int * HDC ;
typedef scalar_t__ HBITMAP ;


 int BitBlt (int *,int ,int ,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ CreateCompatibleBitmap (int *,int ,int ) ;
 int * CreateCompatibleDC (int *) ;
 int DeleteDC (int *) ;
 int DeleteObject (scalar_t__) ;
 int SRCCOPY ;
 int SRCPAINT ;
 scalar_t__ SelectObject (int *,scalar_t__) ;

void GraphCtrl_Paint(TGraphCtrl* this, HWND hWnd, HDC dc)
{
    HDC memDC;
    HBITMAP memBitmap;
    HBITMAP oldBitmap;
    memDC = CreateCompatibleDC(dc);
    memBitmap = (HBITMAP)CreateCompatibleBitmap(dc, this->m_nClientWidth, this->m_nClientHeight);
    oldBitmap = (HBITMAP)SelectObject(memDC, memBitmap);

    if (memDC != ((void*)0))
    {

        BitBlt(memDC, 0, 0, this->m_nClientWidth, this->m_nClientHeight, this->m_dcGrid, 0, 0, SRCCOPY);


        BitBlt(memDC, 0, 0, this->m_nClientWidth, this->m_nClientHeight, this->m_dcPlot, 0, 0, SRCPAINT);

        BitBlt(dc, 0, 0, this->m_nClientWidth, this->m_nClientHeight, memDC, 0, 0, SRCCOPY);
    }
    SelectObject(memDC, oldBitmap);
    DeleteObject(memBitmap);
    DeleteDC(memDC);
}
