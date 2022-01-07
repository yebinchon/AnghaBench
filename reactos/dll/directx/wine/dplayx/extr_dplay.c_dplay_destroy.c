
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* DebugInfo; } ;
struct TYPE_8__ {TYPE_5__ lock; } ;
struct TYPE_7__ {scalar_t__* Spare; } ;
typedef TYPE_2__ IDirectPlayImpl ;


 int DP_DestroyDirectPlay2 (TYPE_2__*) ;
 int DeleteCriticalSection (TYPE_5__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static void dplay_destroy(IDirectPlayImpl *obj)
{
     DP_DestroyDirectPlay2( obj );
     obj->lock.DebugInfo->Spare[0] = 0;
     DeleteCriticalSection( &obj->lock );
     HeapFree( GetProcessHeap(), 0, obj );
}
