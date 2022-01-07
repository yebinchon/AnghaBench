
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int left; } ;
struct TYPE_11__ {int left; } ;
struct TYPE_10__ {int left; int top; int bottom; int right; } ;
struct TYPE_8__ {int left; int right; int top; int bottom; } ;
struct TYPE_9__ {int m_nYDecimals; int m_nPlotWidth; int m_hParentWnd; TYPE_5__ m_rectClient; int m_brushBack; int * m_dcPlot; int m_crBackColor; int * m_bitmapPlot; int m_nClientHeight; int m_nClientWidth; int * m_bitmapOldPlot; int * m_dcGrid; TYPE_1__ m_rectPlot; int m_dLowerLimit; int m_dUpperLimit; int * m_bitmapGrid; int * m_bitmapOldGrid; int m_crGridColor; } ;
typedef TYPE_2__ TGraphCtrl ;
typedef int * HPEN ;
typedef int * HFONT ;
typedef int HDC ;
typedef void* HBITMAP ;
typedef scalar_t__ BOOL ;


 int ANSI_CHARSET ;
 int CLIP_DEFAULT_PRECIS ;
 void* CreateCompatibleBitmap (int ,int ,int ) ;
 void* CreateCompatibleDC (int ) ;
 int * CreateFont (int,int ,int,int ,int,int ,int ,int ,int ,int ,int ,int ,int,char*) ;
 int * CreatePen (int ,int ,int ) ;
 int DEFAULT_PITCH ;
 int DEFAULT_QUALITY ;
 int DeleteObject (int *) ;
 int FALSE ;
 int FF_SWISS ;
 int FillRect (int *,TYPE_5__*,int ) ;
 int GetDC (int ) ;
 int InvalidateRect (int ,TYPE_5__*,int ) ;
 int LineTo (int *,int,int) ;
 int MoveToEx (int *,int,int,int *) ;
 int OUT_DEFAULT_PRECIS ;
 int PS_SOLID ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ SelectObject (int *,int *) ;
 int SetBkColor (int *,int ) ;
 int SetTextAlign (int *,int) ;
 int SetTextColor (int *,int ) ;
 int TA_BASELINE ;
 int TA_CENTER ;
 int TA_LEFT ;
 int TA_RIGHT ;
 int TA_TOP ;
 int TRUE ;
 int TextOut (int *,int,int,char*,int) ;
 int abs (int) ;
 int * axisFont ;
 int fabs (int ) ;
 scalar_t__ log10 (int ) ;
 int m_crGridColor ;
 int m_dLowerLimit ;
 int m_dUpperLimit ;
 int * m_dcGrid ;
 int m_nPlotWidth ;
 int m_nShiftPixels ;
 int m_nYDecimals ;
 TYPE_4__ m_rectClient ;
 TYPE_3__ m_rectPlot ;
 char* m_strXUnitsString ;
 char* m_strYUnitsString ;
 int max (int,int) ;
 int * oldFont ;
 int sprintf (char*,char*,int,...) ;
 char* strTemp ;
 int wcslen (char*) ;
 int * yUnitFont ;

void GraphCtrl_InvalidateCtrl(TGraphCtrl* this, BOOL bResize)
{



    int i;
    int nCharacters;


    HPEN oldPen;
    HPEN solidPen = CreatePen(PS_SOLID, 0, this->m_crGridColor);





    HDC dc = GetDC(this->m_hParentWnd);


    if (this->m_dcGrid == ((void*)0))
    {
        this->m_dcGrid = CreateCompatibleDC(dc);
        this->m_bitmapGrid = CreateCompatibleBitmap(dc, this->m_nClientWidth, this->m_nClientHeight);
        this->m_bitmapOldGrid = (HBITMAP)SelectObject(this->m_dcGrid, this->m_bitmapGrid);
    }
    else if(bResize)
    {


        if(this->m_bitmapGrid != ((void*)0))
        {
            this->m_bitmapGrid = (HBITMAP)SelectObject(this->m_dcGrid, this->m_bitmapOldGrid);
            DeleteObject(this->m_bitmapGrid);
            this->m_bitmapGrid = CreateCompatibleBitmap(dc, this->m_nClientWidth, this->m_nClientHeight);
            SelectObject(this->m_dcGrid, this->m_bitmapGrid);
        }
    }

    SetBkColor(this->m_dcGrid, this->m_crBackColor);


    FillRect(this->m_dcGrid, &this->m_rectClient, this->m_brushBack);



    nCharacters = abs((int)log10(fabs(this->m_dUpperLimit)));
    nCharacters = max(nCharacters, abs((int)log10(fabs(this->m_dLowerLimit))));



    nCharacters = nCharacters + 4 + this->m_nYDecimals;




    this->m_rectPlot.left = this->m_rectClient.left;
    this->m_nPlotWidth = this->m_rectPlot.right - this->m_rectPlot.left;


    oldPen = (HPEN)SelectObject(this->m_dcGrid, solidPen);
    MoveToEx(this->m_dcGrid, this->m_rectPlot.left, this->m_rectPlot.top, ((void*)0));
    LineTo(this->m_dcGrid, this->m_rectPlot.right+1, this->m_rectPlot.top);
    LineTo(this->m_dcGrid, this->m_rectPlot.right+1, this->m_rectPlot.bottom+1);
    LineTo(this->m_dcGrid, this->m_rectPlot.left, this->m_rectPlot.bottom+1);



    for (i = this->m_rectPlot.top; i < this->m_rectPlot.bottom; i += 12)
    {
        MoveToEx(this->m_dcGrid, this->m_rectPlot.left, this->m_rectPlot.top + i, ((void*)0));
        LineTo(this->m_dcGrid, this->m_rectPlot.right, this->m_rectPlot.top + i);
    }


    for (i = this->m_rectPlot.left; i < this->m_rectPlot.right; i += 12)
    {
        MoveToEx(this->m_dcGrid, this->m_rectPlot.left + i, this->m_rectPlot.bottom, ((void*)0));
        LineTo(this->m_dcGrid, this->m_rectPlot.left + i, this->m_rectPlot.top);
    }

    SelectObject(this->m_dcGrid, oldPen);
    DeleteObject(solidPen);
    if (this->m_dcPlot == ((void*)0))
    {
        this->m_dcPlot = CreateCompatibleDC(dc);
        this->m_bitmapPlot = CreateCompatibleBitmap(dc, this->m_nClientWidth, this->m_nClientHeight);
        this->m_bitmapOldPlot = (HBITMAP)SelectObject(this->m_dcPlot, this->m_bitmapPlot);
    }
    else if(bResize)
    {


        if(this->m_bitmapPlot != ((void*)0))
        {
            this->m_bitmapPlot = (HBITMAP)SelectObject(this->m_dcPlot, this->m_bitmapOldPlot);
            DeleteObject(this->m_bitmapPlot);
            this->m_bitmapPlot = CreateCompatibleBitmap(dc, this->m_nClientWidth, this->m_nClientHeight);
            SelectObject(this->m_dcPlot, this->m_bitmapPlot);
        }
    }


    SetBkColor(this->m_dcPlot, this->m_crBackColor);
    FillRect(this->m_dcPlot, &this->m_rectClient, this->m_brushBack);


    InvalidateRect(this->m_hParentWnd, &this->m_rectClient, TRUE);
    ReleaseDC(this->m_hParentWnd, dc);
}
