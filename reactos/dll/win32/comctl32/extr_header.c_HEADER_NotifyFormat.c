
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int nNotifyFormat; int hwndSelf; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ HEADER_INFO ;




 int SendMessageW (int ,int ,int ,int const) ;
 int WM_NOTIFYFORMAT ;

__attribute__((used)) static LRESULT
HEADER_NotifyFormat (HEADER_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    switch (lParam)
    {
 case 129:
     return infoPtr->nNotifyFormat;

 case 128:
     infoPtr->nNotifyFormat =
  SendMessageW ((HWND)wParam, WM_NOTIFYFORMAT,
                             (WPARAM)infoPtr->hwndSelf, 129);
     return infoPtr->nNotifyFormat;
    }

    return 0;
}
