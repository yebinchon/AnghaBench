
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* DebugInfo; } ;
struct TYPE_6__ {TYPE_4__ msg_crst; int messages; int msg_event; } ;
struct TYPE_5__ {scalar_t__* Spare; } ;
typedef TYPE_2__ EventsQueue ;


 int CloseHandle (int ) ;
 int CoTaskMemFree (int ) ;
 int DeleteCriticalSection (TYPE_4__*) ;
 int TRUE ;

__attribute__((used)) static int EventsQueue_Destroy(EventsQueue* omr)
{
    CloseHandle(omr->msg_event);
    CoTaskMemFree(omr->messages);
    omr->msg_crst.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection(&omr->msg_crst);
    return TRUE;
}
