
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Self; void* MaxVal; void* MinVal; } ;
typedef TYPE_1__ UPDOWN_INFO ;
typedef int LRESULT ;
typedef void* INT ;


 int TRACE (char*,void*,void*,int ) ;

__attribute__((used)) static LRESULT UPDOWN_SetRange(UPDOWN_INFO *infoPtr, INT Max, INT Min)
{
    infoPtr->MaxVal = Max;
    infoPtr->MinVal = Min;

    TRACE("UpDown Ctrl new range(%d to %d), hwnd=%p\n",
           infoPtr->MinVal, infoPtr->MaxVal, infoPtr->Self);

    return 0;
}
