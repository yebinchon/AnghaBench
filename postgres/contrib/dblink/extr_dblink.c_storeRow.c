
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {char** cstrs; int tmpcontext; int * tuplestore; int attinmeta; TYPE_6__* fcinfo; } ;
typedef TYPE_2__ storeInfo ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_15__ {scalar_t__ resultinfo; } ;
struct TYPE_14__ {TYPE_3__* setDesc; int * setResult; TYPE_1__* econtext; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_11__ {int ecxt_per_query_memory; } ;
typedef TYPE_4__ ReturnSetInfo ;
typedef int PGresult ;
typedef int MemoryContext ;
typedef int HeapTuple ;


 int Assert (int) ;
 int BuildTupleFromCStrings (int ,char**) ;
 TYPE_3__* CreateTupleDescCopy (TYPE_3__*) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PQgetisnull (int *,int ,int) ;
 char* PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;


 int TupleDescGetAttInMetadata (TYPE_3__*) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_call_result_type (TYPE_6__*,int *,TYPE_3__**) ;
 scalar_t__ palloc (int) ;
 int pfree (char**) ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_end (int *) ;
 int tuplestore_puttuple (int *,int ) ;
 int work_mem ;

__attribute__((used)) static void
storeRow(volatile storeInfo *sinfo, PGresult *res, bool first)
{
 int nfields = PQnfields(res);
 HeapTuple tuple;
 int i;
 MemoryContext oldcontext;

 if (first)
 {

  ReturnSetInfo *rsinfo = (ReturnSetInfo *) sinfo->fcinfo->resultinfo;
  TupleDesc tupdesc;






  if (sinfo->tuplestore)
   tuplestore_end(sinfo->tuplestore);
  sinfo->tuplestore = ((void*)0);


  switch (get_call_result_type(sinfo->fcinfo, ((void*)0), &tupdesc))
  {
   case 129:

    break;
   case 128:

    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("function returning record called in context "
        "that cannot accept type record")));
    break;
   default:

    elog(ERROR, "return type must be a row type");
    break;
  }


  tupdesc = CreateTupleDescCopy(tupdesc);


  if (nfields != tupdesc->natts)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("remote query result rowtype does not match "
       "the specified FROM clause rowtype")));


  sinfo->attinmeta = TupleDescGetAttInMetadata(tupdesc);


  oldcontext = MemoryContextSwitchTo(rsinfo->econtext->ecxt_per_query_memory);
  sinfo->tuplestore = tuplestore_begin_heap(1, 0, work_mem);
  rsinfo->setResult = sinfo->tuplestore;
  rsinfo->setDesc = tupdesc;
  MemoryContextSwitchTo(oldcontext);


  if (PQntuples(res) == 0)
   return;





  if (sinfo->cstrs)
   pfree(sinfo->cstrs);
  sinfo->cstrs = (char **) palloc(nfields * sizeof(char *));
 }


 Assert(PQntuples(res) == 1);






 oldcontext = MemoryContextSwitchTo(sinfo->tmpcontext);




 for (i = 0; i < nfields; i++)
 {
  if (PQgetisnull(res, 0, i))
   sinfo->cstrs[i] = ((void*)0);
  else
   sinfo->cstrs[i] = PQgetvalue(res, 0, i);
 }


 tuple = BuildTupleFromCStrings(sinfo->attinmeta, sinfo->cstrs);

 tuplestore_puttuple(sinfo->tuplestore, tuple);


 MemoryContextSwitchTo(oldcontext);
 MemoryContextReset(sinfo->tmpcontext);
}
