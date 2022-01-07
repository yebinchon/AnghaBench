
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ threadId; int cs; scalar_t__ uTimer; int hwndSelf; scalar_t__ hStopEvent; scalar_t__ hThread; } ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOL ;
typedef TYPE_1__ ANIMATE_INFO ;


 int ACN_STOP ;
 int ANIMATE_Notify (TYPE_1__*,int ) ;
 int CloseHandle (scalar_t__) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 scalar_t__ GetCurrentThreadId () ;
 int INFINITE ;
 int KillTimer (int ,scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int SetEvent (scalar_t__) ;
 int TRACE (char*) ;
 scalar_t__ TRUE ;
 int WaitForSingleObject (scalar_t__,int ) ;

__attribute__((used)) static BOOL ANIMATE_DoStop(ANIMATE_INFO *infoPtr)
{
    BOOL stopped = FALSE;

    EnterCriticalSection(&infoPtr->cs);


    if (infoPtr->hThread)
    {
        HANDLE handle = infoPtr->hThread;

        TRACE("stopping animation thread\n");
        infoPtr->hThread = 0;
        SetEvent( infoPtr->hStopEvent );

        if (infoPtr->threadId != GetCurrentThreadId())
        {
            LeaveCriticalSection(&infoPtr->cs);
            WaitForSingleObject( handle, INFINITE );
            TRACE("animation thread stopped\n");
            EnterCriticalSection(&infoPtr->cs);
        }

        CloseHandle( handle );
        CloseHandle( infoPtr->hStopEvent );
        infoPtr->hStopEvent = 0;
        stopped = TRUE;
    }
    if (infoPtr->uTimer) {
 KillTimer(infoPtr->hwndSelf, infoPtr->uTimer);
 infoPtr->uTimer = 0;
 stopped = TRUE;
    }

    LeaveCriticalSection(&infoPtr->cs);

    if (stopped)
        ANIMATE_Notify(infoPtr, ACN_STOP);

    return TRUE;
}
