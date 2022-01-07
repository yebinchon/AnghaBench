
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int TupleTableSlot ;
struct TYPE_4__ {TYPE_1__* tuptable; } ;
struct TYPE_3__ {int numvals; int alloced; int * vals; int tuptabcxt; } ;
typedef TYPE_1__ SPITupleTable ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int DestReceiver ;


 int ERROR ;
 int ExecCopySlotHeapTuple (int *) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_2__* _SPI_current ;
 int elog (int ,char*) ;
 scalar_t__ repalloc_huge (int *,int) ;

bool
spi_printtup(TupleTableSlot *slot, DestReceiver *self)
{
 SPITupleTable *tuptable;
 MemoryContext oldcxt;

 if (_SPI_current == ((void*)0))
  elog(ERROR, "spi_printtup called while not connected to SPI");

 tuptable = _SPI_current->tuptable;
 if (tuptable == ((void*)0))
  elog(ERROR, "improper call to spi_printtup");

 oldcxt = MemoryContextSwitchTo(tuptable->tuptabcxt);

 if (tuptable->numvals >= tuptable->alloced)
 {

  uint64 newalloced = tuptable->alloced * 2;

  tuptable->vals = (HeapTuple *) repalloc_huge(tuptable->vals,
              newalloced * sizeof(HeapTuple));
  tuptable->alloced = newalloced;
 }

 tuptable->vals[tuptable->numvals] = ExecCopySlotHeapTuple(slot);
 (tuptable->numvals)++;

 MemoryContextSwitchTo(oldcxt);

 return 1;
}
