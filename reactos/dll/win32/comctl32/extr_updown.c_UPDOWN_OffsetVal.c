
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ CurVal; int dwStyle; scalar_t__ MaxVal; scalar_t__ MinVal; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;


 int UDS_WRAP ;
 int UPDOWN_InBounds (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static BOOL UPDOWN_OffsetVal(UPDOWN_INFO *infoPtr, int delta)
{

    if(!UPDOWN_InBounds (infoPtr, infoPtr->CurVal+delta)) {
        if (infoPtr->dwStyle & UDS_WRAP) {
            delta += (delta < 0 ? -1 : 1) *
       (infoPtr->MaxVal < infoPtr->MinVal ? -1 : 1) *
       (infoPtr->MinVal - infoPtr->MaxVal) +
       (delta < 0 ? 1 : -1);
        } else if ((infoPtr->MaxVal > infoPtr->MinVal && infoPtr->CurVal+delta > infoPtr->MaxVal)
                || (infoPtr->MaxVal < infoPtr->MinVal && infoPtr->CurVal+delta < infoPtr->MaxVal)) {
            delta = infoPtr->MaxVal - infoPtr->CurVal;
        } else {
            delta = infoPtr->MinVal - infoPtr->CurVal;
        }
    }

    infoPtr->CurVal += delta;
    return delta != 0;
}
