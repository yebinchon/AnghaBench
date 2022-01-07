
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* query_data; } ;
typedef TYPE_2__ plperl_query_entry ;
struct TYPE_11__ {int nargs; int plan; int * argtypioparams; int * arginfuncs; int * argtypes; } ;
typedef TYPE_3__ plperl_query_desc ;
struct TYPE_14__ {TYPE_1__* prodesc; } ;
struct TYPE_13__ {int query_hash; } ;
struct TYPE_12__ {int message; } ;
struct TYPE_9__ {int fn_readonly; } ;
typedef int SV ;
typedef int ResourceOwner ;
typedef int MemoryContext ;
typedef int HV ;
typedef TYPE_4__ ErrorData ;
typedef char Datum ;


 int BeginInternalSubTransaction (int *) ;
 TYPE_4__* CopyErrorData () ;
 int CurrentMemoryContext ;
 int CurrentResourceOwner ;
 int ERROR ;
 int FlushErrorState () ;
 int HASH_FIND ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int ReleaseCurrentSubTransaction () ;
 int RollbackAndReleaseCurrentSubTransaction () ;
 int SPI_execute_plan (int ,char*,char*,int ,int) ;
 int SPI_processed ;
 int SPI_tuptable ;
 scalar_t__ SvIOK (int *) ;
 int SvIV (int *) ;
 int check_spi_usage_allowed () ;
 int croak_cstr (int ) ;
 TYPE_7__* current_call_data ;
 int dTHX ;
 int elog (int ,char*,...) ;
 TYPE_2__* hash_search (int ,char*,int ,int *) ;
 int ** hv_fetch_string (int *,char*) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 TYPE_5__* plperl_active_interp ;
 int * plperl_spi_execute_fetch_result (int ,int ,int) ;
 char plperl_sv_to_datum (int *,int ,int,int *,int *,int ,int*) ;

HV *
plperl_spi_exec_prepared(char *query, HV *attr, int argc, SV **argv)
{
 HV *ret_hv;
 SV **sv;
 int i,
    limit,
    spi_rv;
 char *nulls;
 Datum *argvalues;
 plperl_query_desc *qdesc;
 plperl_query_entry *hash_entry;





 MemoryContext oldcontext = CurrentMemoryContext;
 ResourceOwner oldowner = CurrentResourceOwner;

 check_spi_usage_allowed();

 BeginInternalSubTransaction(((void*)0));

 MemoryContextSwitchTo(oldcontext);

 PG_TRY();
 {
  dTHX;




  hash_entry = hash_search(plperl_active_interp->query_hash, query,
         HASH_FIND, ((void*)0));
  if (hash_entry == ((void*)0))
   elog(ERROR, "spi_exec_prepared: Invalid prepared query passed");

  qdesc = hash_entry->query_data;
  if (qdesc == ((void*)0))
   elog(ERROR, "spi_exec_prepared: plperl query_hash value vanished");

  if (qdesc->nargs != argc)
   elog(ERROR, "spi_exec_prepared: expected %d argument(s), %d passed",
     qdesc->nargs, argc);




  limit = 0;
  if (attr != ((void*)0))
  {
   sv = hv_fetch_string(attr, "limit");
   if (sv && *sv && SvIOK(*sv))
    limit = SvIV(*sv);
  }



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




  spi_rv = SPI_execute_plan(qdesc->plan, argvalues, nulls,
          current_call_data->prodesc->fn_readonly, limit);
  ret_hv = plperl_spi_execute_fetch_result(SPI_tuptable, SPI_processed,
             spi_rv);
  if (argc > 0)
  {
   pfree(argvalues);
   pfree(nulls);
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

 return ret_hv;
}
