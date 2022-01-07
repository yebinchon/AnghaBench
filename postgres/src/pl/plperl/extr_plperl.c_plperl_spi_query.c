
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int message; } ;
struct TYPE_6__ {int name; } ;
typedef int SV ;
typedef int * SPIPlanPtr ;
typedef int ResourceOwner ;
typedef TYPE_1__* Portal ;
typedef int MemoryContext ;
typedef TYPE_2__ ErrorData ;


 int BeginInternalSubTransaction (int *) ;
 TYPE_2__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int ERROR ;
 int FlushErrorState () ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int PinPortal (TYPE_1__*) ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 TYPE_1__* SPI_cursor_open (int *,int *,int *,int *,int) ;
 int SPI_freeplan (int *) ;
 int * SPI_prepare (char*,int ,int *) ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 int check_spi_usage_allowed () ;
 int croak_cstr (int ) ;
 int * cstr2sv (int ) ;
 int elog (int ,char*,int ) ;
 int pg_verifymbstr (char*,int ,int) ;
 int strlen (char*) ;

SV *
plperl_spi_query(char *query)
{
 SV *cursor;





 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;

 check_spi_usage_allowed();

 BeginInternalSubTransaction(((void*)0));

 MemoryContextSwitchTo(oldcontext);

 PG_TRY();
 {
  SPIPlanPtr plan;
  Portal portal;


  pg_verifymbstr(query, strlen(query), 0);


  plan = SPI_prepare(query, 0, ((void*)0));
  if (plan == ((void*)0))
   elog(ERROR, "SPI_prepare() failed:%s",
     SPI_result_code_string(SPI_result));

  portal = SPI_cursor_open(((void*)0), plan, ((void*)0), ((void*)0), 0);
  SPI_freeplan(plan);
  if (portal == ((void*)0))
   elog(ERROR, "SPI_cursor_open() failed:%s",
     SPI_result_code_string(SPI_result));
  cursor = cstr2sv(portal->name);

  PinPortal(portal);


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

 return cursor;
}
