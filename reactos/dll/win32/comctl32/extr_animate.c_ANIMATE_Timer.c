
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; int cs; } ;
typedef int LRESULT ;
typedef int HDC ;
typedef TYPE_1__ ANIMATE_INFO ;


 int ANIMATE_DrawFrame (TYPE_1__*,int ) ;
 int EnterCriticalSection (int *) ;
 int GetDC (int ) ;
 int LeaveCriticalSection (int *) ;
 int ReleaseDC (int ,int ) ;

__attribute__((used)) static LRESULT ANIMATE_Timer(ANIMATE_INFO *infoPtr)
{
    HDC hDC;

    if ((hDC = GetDC(infoPtr->hwndSelf)) != 0)
    {
        EnterCriticalSection(&infoPtr->cs);
        ANIMATE_DrawFrame(infoPtr, hDC);
        LeaveCriticalSection(&infoPtr->cs);

 ReleaseDC(infoPtr->hwndSelf, hDC);
    }

    return 0;
}
