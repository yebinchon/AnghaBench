
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_crGridColor; } ;
typedef TYPE_1__ TGraphCtrl ;
typedef int COLORREF ;


 int FALSE ;
 int GraphCtrl_InvalidateCtrl (TYPE_1__*,int ) ;

void GraphCtrl_SetGridColor(TGraphCtrl* this, COLORREF color)
{
    this->m_crGridColor = color;

    GraphCtrl_InvalidateCtrl(this, FALSE);
}
