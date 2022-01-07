
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* prodesc; } ;
struct TYPE_6__ {int message; } ;
struct TYPE_5__ {int fn_readonly; } ;
typedef int ResourceOwner ;
typedef int MemoryContext ;
typedef int HV ;
typedef TYPE_2__ ErrorData ;


 int BeginInternalSubTransaction (int *) ;
 TYPE_2__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int FlushErrorState () ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 int SPI_execute (char*,int ,int) ;
 int SPI_processed ;
 int SPI_tuptable ;
 int check_spi_usage_allowed () ;
 int croak_cstr (int ) ;
 TYPE_3__* current_call_data ;
 int pg_verifymbstr (char*,int ,int) ;
 int * plperl_spi_execute_fetch_result (int ,int ,int) ;
 int strlen (char*) ;

HV *
plperl_spi_exec(char *query, int limit)
{
 HV *ret_hv;





 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;

 check_spi_usage_allowed();

 BeginInternalSubTransaction(((void*)0));

 MemoryContextSwitchTo(oldcontext);

 PG_TRY();
 {
  int spi_rv;

  pg_verifymbstr(query, strlen(query), 0);

  spi_rv = SPI_execute(query, current_call_data->prodesc->fn_readonly,
        limit);
  ret_hv = plperl_spi_execute_fetch_result(SPI_tuptable, SPI_processed,
             spi_rv);


  ReleaseCurrentSubTransaction();
  MemoryContextSwitchTo(oldcontext);
  CurrentResourceOwner = oldowner;
 }
 PG_CATCH();
 {
  ErrorData *edata;


  MemoryContextSwitchTo(oldcontext);
  edata = CopyErrorData();
  FlushErrorState();


  RollbackAndReleaseCurrentSubTransaction();
  MemoryContextSwitchTo(oldcontext);
  CurrentResourceOwner = oldowner;


  croak_cstr(edata->message);


  return ((void*)0);
 }
 PG_END_TRY();

 return ret_hv;
}
