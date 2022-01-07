
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MaxVal; int MinVal; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int BOOL ;



__attribute__((used)) static BOOL UPDOWN_InBounds(const UPDOWN_INFO *infoPtr, int val)
{
    if(infoPtr->MaxVal > infoPtr->MinVal)
        return (infoPtr->MinVal <= val) && (val <= infoPtr->MaxVal);
    else
        return (infoPtr->MaxVal <= val) && (val <= infoPtr->MinVal);
}
