
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {void* m_hWnd; void* m_hParentWnd; } ;
typedef TYPE_1__ TGraphCtrl ;
typedef void* HWND ;


 int GraphCtrl_Init (TYPE_1__*) ;
 int GraphCtrl_Resize (TYPE_1__*) ;

void GraphCtrl_Create(TGraphCtrl* this, HWND hWnd, HWND hParentWnd, UINT nID)
{
    GraphCtrl_Init(this);
    this->m_hParentWnd = hParentWnd;
    this->m_hWnd = hWnd;

    GraphCtrl_Resize(this);

    return;
}
