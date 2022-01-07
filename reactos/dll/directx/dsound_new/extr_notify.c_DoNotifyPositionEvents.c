
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {TYPE_4__* EventListHead; } ;
struct TYPE_9__ {scalar_t__ NotifyCount; struct TYPE_9__* lpNext; TYPE_3__* Notify; } ;
struct TYPE_6__ {int Event; } ;
struct TYPE_7__ {TYPE_1__ EventHandle; } ;
struct TYPE_8__ {scalar_t__ Position; TYPE_2__ KsEventData; } ;
typedef TYPE_4__* LPNOTIFYEVENT ;
typedef int LPDIRECTSOUNDNOTIFY ;
typedef TYPE_5__* LPCDirectSoundNotifyImpl ;
typedef scalar_t__ DWORD ;


 int CDirectSoundNotifyImpl ;
 int CONTAINING_RECORD (int ,int ,int ) ;
 int SetEvent (int ) ;
 int lpVtbl ;

VOID
DoNotifyPositionEvents(
    LPDIRECTSOUNDNOTIFY iface,
    DWORD OldPosition,
    DWORD NewPosition)
{
    DWORD Index;
    LPNOTIFYEVENT CurEventList;

    LPCDirectSoundNotifyImpl This = (LPCDirectSoundNotifyImpl)CONTAINING_RECORD(iface, CDirectSoundNotifyImpl, lpVtbl);

    CurEventList = This->EventListHead;

    while(CurEventList)
    {
        for(Index = 0; Index < CurEventList->NotifyCount; Index++)
        {
            if (NewPosition > OldPosition)
            {

                if (OldPosition < CurEventList->Notify[Index].Position && CurEventList->Notify[Index].Position <= NewPosition)
                {

                    SetEvent(CurEventList->Notify[Index].KsEventData.EventHandle.Event);
                }
            }
            else
            {

                if (OldPosition < CurEventList->Notify[Index].Position || NewPosition > CurEventList->Notify[Index].Position)
                {

                    SetEvent(CurEventList->Notify[Index].KsEventData.EventHandle.Event);
                }
            }
        }


        CurEventList = CurEventList->lpNext;
    }
}
