
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* m_dPreviousPosition; int m_nYDecimals; double m_dLowerLimit; double m_dUpperLimit; double m_dRange; int m_nShiftPixels; int m_nHalfShiftPixels; int m_nPlotShiftPixels; int * m_bitmapOldPlot; int * m_bitmapOldGrid; int m_strYUnitsString; int m_strXUnitsString; void* m_crBackColor; scalar_t__ m_brushBack; void** m_crPlotColor; int * m_penPlot; void* m_crGridColor; scalar_t__ m_bitmapPlot; scalar_t__ m_bitmapGrid; scalar_t__ m_dcPlot; scalar_t__ m_dcGrid; scalar_t__ m_hParentWnd; scalar_t__ m_hWnd; } ;
typedef TYPE_1__ TGraphCtrl ;


 int CreatePen (int ,int ,void*) ;
 scalar_t__ CreateSolidBrush (void*) ;
 int MAX_PLOTS ;
 int PS_SOLID ;
 void* RGB (int,int,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void GraphCtrl_Init(TGraphCtrl* this)
{
    int i;

    this->m_hWnd = 0;
    this->m_hParentWnd = 0;
    this->m_dcGrid = 0;
    this->m_dcPlot = 0;
    this->m_bitmapOldGrid = 0;
    this->m_bitmapOldPlot = 0;
    this->m_bitmapGrid = 0;
    this->m_bitmapPlot = 0;
    this->m_brushBack = 0;

    this->m_penPlot[0] = 0;
    this->m_penPlot[1] = 0;
    this->m_penPlot[2] = 0;
    this->m_penPlot[3] = 0;
    this->m_dPreviousPosition[0] = 0.0;
    this->m_dPreviousPosition[1] = 0.0;
    this->m_dPreviousPosition[2] = 0.0;
    this->m_dPreviousPosition[3] = 0.0;


    this->m_nYDecimals = 3;







    this->m_dLowerLimit = 0.0;
    this->m_dUpperLimit = 100.0;
    this->m_dRange = this->m_dUpperLimit - this->m_dLowerLimit;



    this->m_nShiftPixels = 4;
    this->m_nHalfShiftPixels = this->m_nShiftPixels/2;
    this->m_nPlotShiftPixels = this->m_nShiftPixels + this->m_nHalfShiftPixels;



    this->m_crBackColor = RGB( 0, 0, 0);
    this->m_crGridColor = RGB( 0, 128, 64);
    this->m_crPlotColor[0] = RGB(255, 255, 255);
    this->m_crPlotColor[1] = RGB(100, 255, 255);
    this->m_crPlotColor[2] = RGB(255, 100, 255);
    this->m_crPlotColor[3] = RGB(255, 255, 100);


    for (i = 0; i < MAX_PLOTS; i++)
    {
        this->m_penPlot[i] = CreatePen(PS_SOLID, 0, this->m_crPlotColor[i]);
    }
    this->m_brushBack = CreateSolidBrush(this->m_crBackColor);


    strcpy(this->m_strXUnitsString, "Samples");
    strcpy(this->m_strYUnitsString, "Y units");


    this->m_bitmapOldGrid = ((void*)0);
    this->m_bitmapOldPlot = ((void*)0);
}
