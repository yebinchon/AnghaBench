
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* DebugInfo; } ;
struct TYPE_7__ {TYPE_5__ lock; int msgs; scalar_t__ msgtid; } ;
struct TYPE_6__ {scalar_t__* Spare; } ;
typedef TYPE_2__ IDirectPlayLobbyImpl ;


 int DPQ_DELETEQ (int ,int ,int ,int ) ;
 int DeleteCriticalSection (TYPE_5__*) ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int LPDPLMSG ;
 int cbDeleteElemFromHeap ;
 int msgs ;

__attribute__((used)) static void dplobby_destroy(IDirectPlayLobbyImpl *obj)
{
    if ( obj->msgtid )
        FIXME( "Should kill the msg thread\n" );

    DPQ_DELETEQ( obj->msgs, msgs, LPDPLMSG, cbDeleteElemFromHeap );
    obj->lock.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection( &obj->lock );
    HeapFree( GetProcessHeap(), 0, obj );
}
