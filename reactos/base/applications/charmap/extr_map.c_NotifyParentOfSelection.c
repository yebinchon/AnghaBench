
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int * hParent; int hMapWnd; } ;
typedef TYPE_1__* PMAP ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ DWORD ;


 int GWLP_ID ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;
 scalar_t__ LOWORD (int ) ;
 int MAKELPARAM (int ,int ) ;
 int PostMessage (int *,int ,int ,int ) ;
 int WM_COMMAND ;

__attribute__((used)) static
LRESULT
NotifyParentOfSelection(PMAP infoPtr,
                        UINT code,
                        WCHAR ch)
{
    LRESULT Ret = 0;

    if (infoPtr->hParent != ((void*)0))
    {
        DWORD dwIdc = GetWindowLongPtr(infoPtr->hMapWnd, GWLP_ID);





        Ret = PostMessage(infoPtr->hParent,
                          WM_COMMAND,
                          MAKELPARAM((WORD)dwIdc, (WORD)code),
                          (LPARAM)LOWORD(ch));
    }

    return Ret;
}
