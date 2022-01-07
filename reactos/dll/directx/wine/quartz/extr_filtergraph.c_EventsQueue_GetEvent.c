
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t msg_toget; size_t msg_tosave; int ring_buffer_size; int msg_crst; int msg_event; int * messages; } ;
typedef int LONG ;
typedef TYPE_1__ EventsQueue ;
typedef int Event ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 int LeaveCriticalSection (int *) ;
 int ResetEvent (int ) ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

__attribute__((used)) static BOOL EventsQueue_GetEvent(EventsQueue* omr, Event* evt, LONG msTimeOut)
{
    if (WaitForSingleObject(omr->msg_event, msTimeOut) != WAIT_OBJECT_0)
 return FALSE;

    EnterCriticalSection(&omr->msg_crst);

    if (omr->msg_toget == omr->msg_tosave)
    {
        LeaveCriticalSection(&omr->msg_crst);
 return FALSE;
    }

    *evt = omr->messages[omr->msg_toget];
    omr->msg_toget = (omr->msg_toget + 1) % omr->ring_buffer_size;


    if (omr->msg_toget == omr->msg_tosave)
 ResetEvent(omr->msg_event);

    LeaveCriticalSection(&omr->msg_crst);
    return TRUE;
}
