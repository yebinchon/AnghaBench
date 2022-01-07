
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lItemlParam; scalar_t__ uItemState; scalar_t__ dwItemSpec; int rc; int hdc; int dwDrawStage; } ;
typedef int RECT ;
typedef int NMHDR ;
typedef TYPE_1__ NMCUSTOMDRAW ;
typedef int LRESULT ;
typedef int HEADER_INFO ;
typedef int HDC ;
typedef int DWORD ;


 int HEADER_SendNotify (int const*,int ,int *) ;
 int NM_CUSTOMDRAW ;

__attribute__((used)) static LRESULT
HEADER_SendCtrlCustomDraw(const HEADER_INFO *infoPtr, DWORD dwDrawStage, HDC hdc, const RECT *rect)
{
    NMCUSTOMDRAW nm;
    nm.dwDrawStage = dwDrawStage;
    nm.hdc = hdc;
    nm.rc = *rect;
    nm.dwItemSpec = 0;
    nm.uItemState = 0;
    nm.lItemlParam = 0;

    return HEADER_SendNotify(infoPtr, NM_CUSTOMDRAW, (NMHDR *)&nm);
}
