
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ left; scalar_t__ top; } ;
struct TYPE_5__ {int left; int top; scalar_t__ right; scalar_t__ bottom; } ;
struct TYPE_6__ {double m_dVerticalFactor; double m_dRange; scalar_t__ m_nPlotHeight; TYPE_1__ m_rectPlot; scalar_t__ m_nPlotWidth; TYPE_4__ m_rectClient; scalar_t__ m_nClientWidth; scalar_t__ m_nClientHeight; int m_hWnd; } ;
typedef TYPE_2__ TGraphCtrl ;


 int GetClientRect (int ,TYPE_4__*) ;

void GraphCtrl_Resize(TGraphCtrl* this)
{

    GetClientRect(this->m_hWnd, &this->m_rectClient);


    this->m_nClientHeight = this->m_rectClient.bottom - this->m_rectClient.top;
    this->m_nClientWidth = this->m_rectClient.right - this->m_rectClient.left;
    this->m_rectPlot.left = 0;
    this->m_rectPlot.top = -1;
    this->m_rectPlot.right = this->m_rectClient.right-0;
    this->m_rectPlot.bottom = this->m_rectClient.bottom-0;



    this->m_nPlotHeight = this->m_rectPlot.bottom - this->m_rectPlot.top;
    this->m_nPlotWidth = this->m_rectPlot.right - this->m_rectPlot.left;



    this->m_dVerticalFactor = (double)this->m_nPlotHeight / this->m_dRange;
}
