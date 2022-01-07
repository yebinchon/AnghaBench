
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double m_dLowerLimit; double m_dUpperLimit; int m_nYDecimals; double m_dRange; double m_dVerticalFactor; scalar_t__ m_nPlotHeight; } ;
typedef TYPE_1__ TGraphCtrl ;


 int FALSE ;
 int GraphCtrl_InvalidateCtrl (TYPE_1__*,int ) ;

void GraphCtrl_SetRange(TGraphCtrl* this, double dLower, double dUpper, int nDecimalPlaces)
{

    this->m_dLowerLimit = dLower;
    this->m_dUpperLimit = dUpper;
    this->m_nYDecimals = nDecimalPlaces;
    this->m_dRange = this->m_dUpperLimit - this->m_dLowerLimit;
    this->m_dVerticalFactor = (double)this->m_nPlotHeight / this->m_dRange;

    GraphCtrl_InvalidateCtrl(this, FALSE);
}
