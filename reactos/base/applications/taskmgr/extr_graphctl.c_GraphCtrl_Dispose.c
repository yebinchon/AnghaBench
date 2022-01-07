
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * m_brushBack; int * m_dcPlot; int * m_dcGrid; int * m_bitmapPlot; int * m_bitmapGrid; int * m_bitmapOldPlot; int * m_bitmapOldGrid; int ** m_penPlot; } ;
typedef TYPE_1__ TGraphCtrl ;


 int DeleteDC (int *) ;
 int DeleteObject (int *) ;
 int MAX_PLOTS ;
 int SelectObject (int *,int *) ;

void GraphCtrl_Dispose(TGraphCtrl* this)
{
    int plot;

    for (plot = 0; plot < MAX_PLOTS; plot++)
        DeleteObject(this->m_penPlot[plot]);




    if (this->m_bitmapOldGrid != ((void*)0)) SelectObject(this->m_dcGrid, this->m_bitmapOldGrid);
    if (this->m_bitmapOldPlot != ((void*)0)) SelectObject(this->m_dcPlot, this->m_bitmapOldPlot);
    if (this->m_bitmapGrid != ((void*)0)) DeleteObject(this->m_bitmapGrid);
    if (this->m_bitmapPlot != ((void*)0)) DeleteObject(this->m_bitmapPlot);
    if (this->m_dcGrid != ((void*)0)) DeleteDC(this->m_dcGrid);
    if (this->m_dcPlot != ((void*)0)) DeleteDC(this->m_dcPlot);
    if (this->m_brushBack != ((void*)0)) DeleteObject(this->m_brushBack);
}
