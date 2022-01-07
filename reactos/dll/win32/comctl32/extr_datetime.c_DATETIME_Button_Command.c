
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int dateValid; int hwndSelf; } ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DATETIME_INFO ;


 int BM_GETCHECK ;
 scalar_t__ BN_CLICKED ;
 scalar_t__ BST_CHECKED ;
 scalar_t__ HIWORD (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
DATETIME_Button_Command (DATETIME_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    if( HIWORD(wParam) == BN_CLICKED) {
        DWORD state = SendMessageW((HWND)lParam, BM_GETCHECK, 0, 0);
        infoPtr->dateValid = (state == BST_CHECKED);
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
    }
    return 0;
}
