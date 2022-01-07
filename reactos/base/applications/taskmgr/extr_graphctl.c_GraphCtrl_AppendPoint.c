
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double* m_dCurrentPosition; } ;
typedef TYPE_1__ TGraphCtrl ;


 int GraphCtrl_DrawPoint (TYPE_1__*) ;

double GraphCtrl_AppendPoint(TGraphCtrl* this,
                             double dNewPoint0, double dNewPoint1,
                             double dNewPoint2, double dNewPoint3)
{

    double dPrevious;

    dPrevious = this->m_dCurrentPosition[0];
    this->m_dCurrentPosition[0] = dNewPoint0;
    this->m_dCurrentPosition[1] = dNewPoint1;
    this->m_dCurrentPosition[2] = dNewPoint2;
    this->m_dCurrentPosition[3] = dNewPoint3;
    GraphCtrl_DrawPoint(this);

    return dPrevious;
}
