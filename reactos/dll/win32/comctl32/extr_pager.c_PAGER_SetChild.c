
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndChild; int nPos; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef int HWND ;


 int FALSE ;
 scalar_t__ IsWindow (int) ;
 int PAGER_SetPos (TYPE_1__*,int ,int ,int ) ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int TRACE (char*,int ,int) ;

__attribute__((used)) static LRESULT
PAGER_SetChild (PAGER_INFO* infoPtr, HWND hwndChild)
{
    infoPtr->hwndChild = IsWindow (hwndChild) ? hwndChild : 0;

    if (infoPtr->hwndChild)
    {
        TRACE("[%p] hwndChild=%p\n", infoPtr->hwndSelf, infoPtr->hwndChild);

        SetWindowPos(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
                     SWP_FRAMECHANGED | SWP_NOMOVE | SWP_NOZORDER | SWP_NOSIZE | SWP_NOACTIVATE);

        infoPtr->nPos = -1;
        PAGER_SetPos(infoPtr, 0, FALSE, FALSE);
    }

    return 0;
}
