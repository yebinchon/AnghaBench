
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * m_crPlotColor; int * m_penPlot; } ;
typedef TYPE_1__ TGraphCtrl ;
typedef int COLORREF ;


 int CreatePen (int ,int ,int ) ;
 int DeleteObject (int ) ;
 int FALSE ;
 int GraphCtrl_InvalidateCtrl (TYPE_1__*,int ) ;
 int PS_SOLID ;

void GraphCtrl_SetPlotColor(TGraphCtrl* this, int plot, COLORREF color)
{
    this->m_crPlotColor[plot] = color;
    DeleteObject(this->m_penPlot[plot]);
    this->m_penPlot[plot] = CreatePen(PS_SOLID, 0, this->m_crPlotColor[plot]);

    GraphCtrl_InvalidateCtrl(this, FALSE);
}
