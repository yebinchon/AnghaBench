
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ hwndSelf; int hwndNotify; } ;
typedef int LPARAM ;
typedef TYPE_1__ ANIMATE_INFO ;


 int GetDlgCtrlID (scalar_t__) ;
 int MAKEWPARAM (int ,int ) ;
 int PostMessageW (int ,int ,int ,int ) ;
 int WM_COMMAND ;

__attribute__((used)) static void ANIMATE_Notify(const ANIMATE_INFO *infoPtr, UINT notif)
{
    PostMessageW(infoPtr->hwndNotify, WM_COMMAND,
   MAKEWPARAM(GetDlgCtrlID(infoPtr->hwndSelf), notif),
   (LPARAM)infoPtr->hwndSelf);
}
