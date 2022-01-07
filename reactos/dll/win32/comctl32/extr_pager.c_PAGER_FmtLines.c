
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; int nHeight; int nWidth; int hwndChild; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;


 int DefWindowProcW (int ,int ,int ,int ) ;
 int EM_FMTLINES ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static LRESULT
PAGER_FmtLines(const PAGER_INFO *infoPtr)
{

    SetWindowPos(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
   SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
   SWP_NOZORDER | SWP_NOACTIVATE);

    SetWindowPos(infoPtr->hwndChild, 0,
   0,0,infoPtr->nWidth,infoPtr->nHeight,
   0);

    return DefWindowProcW (infoPtr->hwndSelf, EM_FMTLINES, 0, 0);
}
