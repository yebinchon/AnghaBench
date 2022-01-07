
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* query_data; } ;
typedef TYPE_2__ plperl_query_entry ;
struct TYPE_14__ {int nargs; int plan; int * argtypioparams; int * arginfuncs; int * argtypes; } ;
typedef TYPE_3__ plperl_query_desc ;
struct TYPE_18__ {TYPE_1__* prodesc; } ;
struct TYPE_17__ {int query_hash; } ;
struct TYPE_16__ {int message; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_12__ {int fn_readonly; } ;
typedef int SV ;
typedef int ResourceOwner ;
typedef TYPE_4__* Portal ;
typedef int MemoryContext ;
typedef TYPE_5__ ErrorData ;
typedef char Datum ;


 int BeginInternalSubTransaction (int *) ;
 TYPE_5__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int ERROR ;
 int FlushErrorState () ;
 int HASH_FIND ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int PinPortal (TYPE_4__*) ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 TYPE_4__* SPI_cursor_open (int *,int ,char*,char*,int ) ;
 int SPI_result ;
 int SPI_result_code_string (int ) ;
 int check_spi_usage_allowed () ;
 int croak_cstr (int ) ;
 int * cstr2sv (int ) ;
 TYPE_8__* current_call_data ;
 int elog (int ,char*,...) ;
 TYPE_2__* hash_search (int ,char*,int ,int *) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 TYPE_6__* plperl_active_interp ;
 char plperl_sv_to_datum (int *,int ,int,int *,int *,int ,int*) ;

SV *
plperl_spi_query_prepared(char *query, int argc, SV **argv)
{
 int i;
 char *nulls;
 Datum *argvalues;
 plperl_query_desc *qdesc;
 plperl_query_entry *hash_entry;
 SV *cursor;
 Portal portal = ((void*)0);





 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;

 check_spi_usage_allowed();

 BeginInternalSubTransaction(((void*)0));

 MemoryContextSwitchTo(oldcontext);

 PG_TRY();
 {



  hash_entry = hash_search(plperl_active_interp->query_hash, query,
         HASH_FIND, ((void*)0));
  if (hash_entry == ((void*)0))
   elog(ERROR, "spi_query_prepared: Invalid prepared query passed");

  qdesc = hash_entry->query_data;
  if (qdesc == ((void*)0))
   elog(ERROR, "spi_query_prepared: plperl query_hash value vanished");

  if (qdesc->nargs != argc)
   elog(ERROR, "spi_query_prepared: expected %d argument(s), %d passed",
     qdesc->nargs, argc);




  if (argc > 0)
  {
   nulls = (char *) palloc(argc);
   argvalues = (Datum *) palloc(argc * sizeof(Datum));
  }
  else
  {
   nulls = ((void*)0);
   argvalues = ((void*)0);
  }

  for (i = 0; i < argc; i++)
  {
   bool isnull;

   argvalues[i] = plperl_sv_to_datum(argv[i],
             qdesc->argtypes[i],
             -1,
             ((void*)0),
             &qdesc->arginfuncs[i],
             qdesc->argtypioparams[i],
             &isnull);
   nulls[i] = isnull ? 'n' : ' ';
  }




  portal = SPI_cursor_open(((void*)0), qdesc->plan, argvalues, nulls,
         current_call_data->prodesc->fn_readonly);
  if (argc > 0)
  {
   pfree(argvalues);
   pfree(nulls);
  }
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
