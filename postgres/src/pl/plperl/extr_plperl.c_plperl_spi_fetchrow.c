
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tupdesc; int * vals; } ;
struct TYPE_5__ {int message; } ;
typedef int SV ;
typedef int ResourceOwner ;
typedef int Portal ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int BeginInternalSubTransaction (int *) ;
 TYPE_1__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int FlushErrorState () ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int PL_sv_undef ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 int SPI_cursor_close (int ) ;
 int SPI_cursor_fetch (int ,int,int) ;
 int SPI_cursor_find (char*) ;
 int SPI_freetuptable (TYPE_2__*) ;
 scalar_t__ SPI_processed ;
 TYPE_2__* SPI_tuptable ;
 int UnpinPortal (int ) ;
 int check_spi_usage_allowed () ;
 int croak_cstr (int ) ;
 int dTHX ;
 int * plperl_hash_from_tuple (int ,int ,int) ;

SV *
plperl_spi_fetchrow(char *cursor)
{
 SV *row;





 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;

 check_spi_usage_allowed();

 BeginInternalSubTransaction(((void*)0));

 MemoryContextSwitchTo(oldcontext);

 PG_TRY();
 {
  dTHX;
  Portal p = SPI_cursor_find(cursor);

  if (!p)
  {
   row = &PL_sv_undef;
  }
  else
  {
   SPI_cursor_fetch(p, 1, 1);
   if (SPI_processed == 0)
   {
    UnpinPortal(p);
    SPI_cursor_close(p);
    row = &PL_sv_undef;
   }
   else
   {
    row = plperl_hash_from_tuple(SPI_tuptable->vals[0],
            SPI_tuptable->tupdesc,
            1);
   }
   SPI_freetuptable(SPI_tuptable);
  }


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

 return row;
}
