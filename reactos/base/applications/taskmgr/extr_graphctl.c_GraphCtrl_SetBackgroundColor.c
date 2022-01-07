
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m_crBackColor; int m_brushBack; } ;
typedef TYPE_1__ TGraphCtrl ;
typedef int COLORREF ;


 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int FALSE ;
 int GraphCtrl_InvalidateCtrl (TYPE_1__*,int ) ;

void GraphCtrl_SetBackgroundColor(TGraphCtrl* this, COLORREF color)
{
    this->m_crBackColor = color;
    DeleteObject(this->m_brushBack);
    this->m_brushBack = CreateSolidBrush(this->m_crBackColor);

    GraphCtrl_InvalidateCtrl(this, FALSE);
}
