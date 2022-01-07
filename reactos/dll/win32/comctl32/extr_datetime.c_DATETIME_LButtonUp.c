
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int calbutton; int hwndSelf; scalar_t__ bCalDepressed; } ;
typedef int LRESULT ;
typedef TYPE_1__ DATETIME_INFO ;


 scalar_t__ FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
DATETIME_LButtonUp (DATETIME_INFO *infoPtr)
{
    if(infoPtr->bCalDepressed) {
        infoPtr->bCalDepressed = FALSE;
        InvalidateRect(infoPtr->hwndSelf, &(infoPtr->calbutton), TRUE);
    }

    return 0;
}
