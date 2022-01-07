
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int CurVal; int MinVal; int MaxVal; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;


 int FALSE ;
 int UPDOWN_GetBuddyInt (TYPE_1__*) ;
 int UPDOWN_InBounds (TYPE_1__*,int) ;

__attribute__((used)) static int UPDOWN_GetPos(UPDOWN_INFO *infoPtr, BOOL *err)
{
    BOOL succ = UPDOWN_GetBuddyInt(infoPtr);
    int val = infoPtr->CurVal;

    if(!UPDOWN_InBounds(infoPtr, val)) {
        if((infoPtr->MinVal < infoPtr->MaxVal && val < infoPtr->MinVal)
                || (infoPtr->MinVal > infoPtr->MaxVal && val > infoPtr->MinVal))
            val = infoPtr->MinVal;
        else
            val = infoPtr->MaxVal;

        succ = FALSE;
    }

    if(err) *err = !succ;
    return val;
}
