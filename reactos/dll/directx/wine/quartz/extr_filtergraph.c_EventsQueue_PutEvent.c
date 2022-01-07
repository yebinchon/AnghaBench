
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg_toget; int msg_tosave; int ring_buffer_size; int msg_crst; int msg_event; int * messages; } ;
typedef TYPE_1__ EventsQueue ;
typedef int Event ;
typedef int BOOL ;


 int * CoTaskMemRealloc (int *,int) ;
 size_t EVENTS_RING_BUFFER_INCREMENT ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int SetEvent (int ) ;
 int TRACE (char*,size_t) ;
 int TRUE ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static BOOL EventsQueue_PutEvent(EventsQueue* omr, const Event* evt)
{
    EnterCriticalSection(&omr->msg_crst);
    if (omr->msg_toget == ((omr->msg_tosave + 1) % omr->ring_buffer_size))
    {
 int old_ring_buffer_size = omr->ring_buffer_size;
 omr->ring_buffer_size += EVENTS_RING_BUFFER_INCREMENT;
 TRACE("omr->ring_buffer_size=%d\n",omr->ring_buffer_size);
 omr->messages = CoTaskMemRealloc(omr->messages, omr->ring_buffer_size * sizeof(Event));




 if (omr->msg_tosave < omr->msg_toget)
 {
     memmove(&(omr->messages[omr->msg_toget + EVENTS_RING_BUFFER_INCREMENT]),
      &(omr->messages[omr->msg_toget]),
      sizeof(Event)*(old_ring_buffer_size - omr->msg_toget)
      );
     omr->msg_toget += EVENTS_RING_BUFFER_INCREMENT;
 }
    }
    omr->messages[omr->msg_tosave] = *evt;
    SetEvent(omr->msg_event);
    omr->msg_tosave = (omr->msg_tosave + 1) % omr->ring_buffer_size;
    LeaveCriticalSection(&omr->msg_crst);
    return TRUE;
}
