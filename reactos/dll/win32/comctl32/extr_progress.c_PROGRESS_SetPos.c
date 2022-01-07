
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int CurVal; int Self; } ;
typedef TYPE_1__ PROGRESS_INFO ;
typedef int INT ;
typedef int DWORD ;


 int GWL_STYLE ;
 int GetWindowLongW (int ,int ) ;
 int PBS_MARQUEE ;
 int PROGRESS_CoercePos (TYPE_1__*) ;
 int PROGRESS_Invalidate (TYPE_1__*,int,int) ;
 int PROGRESS_UpdateMarquee (TYPE_1__*) ;
 int TRACE (char*,int,int) ;
 int UpdateWindow (int ) ;

__attribute__((used)) static UINT PROGRESS_SetPos (PROGRESS_INFO *infoPtr, INT pos)
{
    DWORD style = GetWindowLongW(infoPtr->Self, GWL_STYLE);

    if (style & PBS_MARQUEE)
    {
        PROGRESS_UpdateMarquee(infoPtr);
        return 1;
    }
    else
    {
        UINT oldVal;
        oldVal = infoPtr->CurVal;
        if (oldVal != pos) {
     infoPtr->CurVal = pos;
     PROGRESS_CoercePos(infoPtr);
     TRACE("PBM_SETPOS: current pos changed from %d to %d\n", oldVal, infoPtr->CurVal);
            PROGRESS_Invalidate( infoPtr, oldVal, infoPtr->CurVal );
            UpdateWindow( infoPtr->Self );
        }
        return oldVal;
    }
}
