
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int TupleTableSlot ;
struct TYPE_9__ {int (* rShutdown ) (TYPE_2__*) ;int (* receiveSlot ) (int *,TYPE_2__*) ;int (* rStartup ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_8__ {int holdStore; int holdContext; int tupDesc; } ;
typedef int ScanDirection ;
typedef TYPE_1__* Portal ;
typedef int MemoryContext ;
typedef TYPE_2__ DestReceiver ;


 int CMD_SELECT ;
 int ExecClearTuple (int *) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int * MakeSingleTupleTableSlot (int ,int *) ;
 int MemoryContextSwitchTo (int ) ;
 int ScanDirectionIsForward (int ) ;
 scalar_t__ ScanDirectionIsNoMovement (int ) ;
 int TTSOpsMinimalTuple ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (int *,TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;
 int tuplestore_gettupleslot (int ,int,int,int *) ;

__attribute__((used)) static uint64
RunFromStore(Portal portal, ScanDirection direction, uint64 count,
    DestReceiver *dest)
{
 uint64 current_tuple_count = 0;
 TupleTableSlot *slot;

 slot = MakeSingleTupleTableSlot(portal->tupDesc, &TTSOpsMinimalTuple);

 dest->rStartup(dest, CMD_SELECT, portal->tupDesc);

 if (ScanDirectionIsNoMovement(direction))
 {

 }
 else
 {
  bool forward = ScanDirectionIsForward(direction);

  for (;;)
  {
   MemoryContext oldcontext;
   bool ok;

   oldcontext = MemoryContextSwitchTo(portal->holdContext);

   ok = tuplestore_gettupleslot(portal->holdStore, forward, 0,
           slot);

   MemoryContextSwitchTo(oldcontext);

   if (!ok)
    break;






   if (!dest->receiveSlot(slot, dest))
    break;

   ExecClearTuple(slot);






   current_tuple_count++;
   if (count && count == current_tuple_count)
    break;
  }
 }

 dest->rShutdown(dest);

 ExecDropSingleTupleTableSlot(slot);

 return current_tuple_count;
}
