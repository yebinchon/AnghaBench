
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int message; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 TYPE_1__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int FlushErrorState () ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int SPI_rollback () ;
 int SPI_start_transaction () ;
 int croak_cstr (int ) ;

void
plperl_spi_rollback(void)
{
 MemoryContext oldcontext = CurrentMemoryContext;

 PG_TRY();
 {
  SPI_rollback();
  SPI_start_transaction();
 }
 PG_CATCH();
 {
  ErrorData *edata;


  MemoryContextSwitchTo(oldcontext);
  edata = CopyErrorData();
  FlushErrorState();


  croak_cstr(edata->message);
 }
 PG_END_TRY();
}
