
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MinVal; int MaxVal; int Self; } ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef int DWORD ;


 int InvalidateRect (int ,int *,int ) ;
 int LOWORD (int) ;
 int MAKELONG (int ,int ) ;
 int PROGRESS_CoercePos (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static DWORD PROGRESS_SetRange (PROGRESS_INFO *infoPtr, int low, int high)
{
    DWORD res = MAKELONG(LOWORD(infoPtr->MinVal), LOWORD(infoPtr->MaxVal));


    if(infoPtr->MinVal == low && infoPtr->MaxVal == high) return res;

    infoPtr->MinVal = low;
    infoPtr->MaxVal = high;
    PROGRESS_CoercePos(infoPtr);
    InvalidateRect(infoPtr->Self, ((void*)0), TRUE);
    return res;
}
