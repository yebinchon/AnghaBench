
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int POINT ;
typedef int LRESULT ;


 scalar_t__ GetCursorPos (int *) ;
 scalar_t__ ScreenToClient (int ,int *) ;
 int TB_AUTO_PAGE ;
 int TRACKBAR_AutoPage (TYPE_1__*,int ) ;

__attribute__((used)) static LRESULT
TRACKBAR_Timer (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->flags & TB_AUTO_PAGE) {
 POINT pt;
 if (GetCursorPos(&pt))
     if (ScreenToClient(infoPtr->hwndSelf, &pt))
  TRACKBAR_AutoPage(infoPtr, pt);
    }
    return 0;
}
