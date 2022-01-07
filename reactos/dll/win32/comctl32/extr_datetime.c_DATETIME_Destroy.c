
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fieldspec; struct TYPE_4__* fieldRect; struct TYPE_4__* buflen; int hwndSelf; scalar_t__ hMonthCal; scalar_t__ hUpdown; scalar_t__ hwndCheckbut; } ;
typedef int LRESULT ;
typedef TYPE_1__ DATETIME_INFO ;


 int DestroyWindow (scalar_t__) ;
 int Free (TYPE_1__*) ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static LRESULT
DATETIME_Destroy (DATETIME_INFO *infoPtr)
{
    if (infoPtr->hwndCheckbut)
 DestroyWindow(infoPtr->hwndCheckbut);
    if (infoPtr->hUpdown)
 DestroyWindow(infoPtr->hUpdown);
    if (infoPtr->hMonthCal)
        DestroyWindow(infoPtr->hMonthCal);
    SetWindowLongPtrW( infoPtr->hwndSelf, 0, 0 );
    Free (infoPtr->buflen);
    Free (infoPtr->fieldRect);
    Free (infoPtr->fieldspec);
    Free (infoPtr);
    return 0;
}
