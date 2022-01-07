
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sqlerrcode; } ;
struct TYPE_7__ {int * exc; } ;
typedef int ResourceOwner ;
typedef int PyObject ;
typedef TYPE_1__ PLyExceptionEntry ;
typedef int MemoryContext ;
typedef TYPE_2__ ErrorData ;


 TYPE_2__* CopyErrorData () ;
 int CurrentResourceOwner ;
 int FlushErrorState () ;
 int FreeErrorData (TYPE_2__*) ;
 int HASH_FIND ;
 int MemoryContextSwitchTo (int ) ;
 int * PLy_exc_spi_error ;
 int PLy_spi_exception_set (int *,TYPE_2__*) ;
 int PLy_spi_exceptions ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 TYPE_1__* hash_search (int ,int *,int ,int *) ;

void
PLy_spi_subtransaction_abort(MemoryContext oldcontext, ResourceOwner oldowner)
{
 ErrorData *edata;
 PLyExceptionEntry *entry;
 PyObject *exc;


 MemoryContextSwitchTo(oldcontext);
 edata = CopyErrorData();
 FlushErrorState();


 RollbackAndReleaseCurrentSubTransaction();
 MemoryContextSwitchTo(oldcontext);
 CurrentResourceOwner = oldowner;


 entry = hash_search(PLy_spi_exceptions, &(edata->sqlerrcode),
      HASH_FIND, ((void*)0));





 exc = entry ? entry->exc : PLy_exc_spi_error;

 PLy_spi_exception_set(exc, edata);
 FreeErrorData(edata);
}
