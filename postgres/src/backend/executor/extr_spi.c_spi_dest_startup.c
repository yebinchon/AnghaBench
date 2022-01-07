
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_4__ {int tuptables; TYPE_1__* tuptable; } ;
struct TYPE_3__ {int alloced; int tupdesc; scalar_t__ numvals; int * vals; int next; int subid; int tuptabcxt; } ;
typedef TYPE_1__ SPITupleTable ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef int DestReceiver ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CreateTupleDescCopy (int ) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_2__* _SPI_current ;
 int _SPI_procmem () ;
 int elog (int ,char*) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int slist_push_head (int *,int *) ;

void
spi_dest_startup(DestReceiver *self, int operation, TupleDesc typeinfo)
{
 SPITupleTable *tuptable;
 MemoryContext oldcxt;
 MemoryContext tuptabcxt;

 if (_SPI_current == ((void*)0))
  elog(ERROR, "spi_dest_startup called while not connected to SPI");

 if (_SPI_current->tuptable != ((void*)0))
  elog(ERROR, "improper call to spi_dest_startup");



 oldcxt = _SPI_procmem();

 tuptabcxt = AllocSetContextCreate(CurrentMemoryContext,
           "SPI TupTable",
           ALLOCSET_DEFAULT_SIZES);
 MemoryContextSwitchTo(tuptabcxt);

 _SPI_current->tuptable = tuptable = (SPITupleTable *)
  palloc0(sizeof(SPITupleTable));
 tuptable->tuptabcxt = tuptabcxt;
 tuptable->subid = GetCurrentSubTransactionId();






 slist_push_head(&_SPI_current->tuptables, &tuptable->next);


 tuptable->alloced = 128;
 tuptable->vals = (HeapTuple *) palloc(tuptable->alloced * sizeof(HeapTuple));
 tuptable->numvals = 0;
 tuptable->tupdesc = CreateTupleDescCopy(typeinfo);

 MemoryContextSwitchTo(oldcxt);
}
