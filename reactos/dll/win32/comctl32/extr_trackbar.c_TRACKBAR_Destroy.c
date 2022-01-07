
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; struct TYPE_4__* tics; scalar_t__ hwndToolTip; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int CloseThemeData (int ) ;
 int DestroyWindow (scalar_t__) ;
 int Free (TYPE_1__*) ;
 int GetWindowTheme (int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static LRESULT
TRACKBAR_Destroy (TRACKBAR_INFO *infoPtr)
{

    if (infoPtr->hwndToolTip)
     DestroyWindow (infoPtr->hwndToolTip);

    Free (infoPtr->tics);
    infoPtr->tics = ((void*)0);

    SetWindowLongPtrW (infoPtr->hwndSelf, 0, 0);
    CloseThemeData (GetWindowTheme (infoPtr->hwndSelf));
    Free (infoPtr);

    return 0;
}
