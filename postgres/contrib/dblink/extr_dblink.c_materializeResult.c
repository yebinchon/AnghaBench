
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Tuplestorestate ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_16__ {scalar_t__ resultinfo; } ;
struct TYPE_15__ {scalar_t__ returnMode; TYPE_2__* setDesc; int * setResult; TYPE_1__* econtext; } ;
struct TYPE_14__ {int natts; } ;
struct TYPE_13__ {int ecxt_per_query_memory; } ;
typedef TYPE_3__ ReturnSetInfo ;
typedef int PGresult ;
typedef int PGconn ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_4__* FunctionCallInfo ;
typedef int AttrNumber ;
typedef int AttInMetadata ;


 int Assert (int) ;
 int BuildTupleFromCStrings (int *,char**) ;
 TYPE_2__* CreateTemplateTupleDesc (int) ;
 TYPE_2__* CreateTupleDescCopy (TYPE_2__*) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PG_END_TRY () ;
 int PG_FINALLY () ;
 int PG_TRY () ;
 int PQclear (int *) ;
 char* PQcmdStatus (int *) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 scalar_t__ SFRM_Materialize ;
 int TEXTOID ;


 int * TupleDescGetAttInMetadata (TYPE_2__*) ;
 int TupleDescInitEntry (TYPE_2__*,int ,char*,int ,int,int ) ;
 int applyRemoteGucs (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int get_call_result_type (TYPE_4__*,int *,TYPE_2__**) ;
 scalar_t__ palloc (int) ;
 int restoreLocalGucs (int) ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_donestoring (int *) ;
 int tuplestore_puttuple (int *,int ) ;
 int work_mem ;

__attribute__((used)) static void
materializeResult(FunctionCallInfo fcinfo, PGconn *conn, PGresult *res)
{
 ReturnSetInfo *rsinfo = (ReturnSetInfo *) fcinfo->resultinfo;


 Assert(rsinfo->returnMode == SFRM_Materialize);

 PG_TRY();
 {
  TupleDesc tupdesc;
  bool is_sql_cmd;
  int ntuples;
  int nfields;

  if (PQresultStatus(res) == PGRES_COMMAND_OK)
  {
   is_sql_cmd = 1;





   tupdesc = CreateTemplateTupleDesc(1);
   TupleDescInitEntry(tupdesc, (AttrNumber) 1, "status",
          TEXTOID, -1, 0);
   ntuples = 1;
   nfields = 1;
  }
  else
  {
   Assert(PQresultStatus(res) == PGRES_TUPLES_OK);

   is_sql_cmd = 0;


   switch (get_call_result_type(fcinfo, ((void*)0), &tupdesc))
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
   ntuples = PQntuples(res);
   nfields = PQnfields(res);
  }




  if (nfields != tupdesc->natts)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("remote query result rowtype does not match "
       "the specified FROM clause rowtype")));

  if (ntuples > 0)
  {
   AttInMetadata *attinmeta;
   int nestlevel = -1;
   Tuplestorestate *tupstore;
   MemoryContext oldcontext;
   int row;
   char **values;

   attinmeta = TupleDescGetAttInMetadata(tupdesc);


   if (!is_sql_cmd)
    nestlevel = applyRemoteGucs(conn);

   oldcontext = MemoryContextSwitchTo(
              rsinfo->econtext->ecxt_per_query_memory);
   tupstore = tuplestore_begin_heap(1, 0, work_mem);
   rsinfo->setResult = tupstore;
   rsinfo->setDesc = tupdesc;
   MemoryContextSwitchTo(oldcontext);

   values = (char **) palloc(nfields * sizeof(char *));


   for (row = 0; row < ntuples; row++)
   {
    HeapTuple tuple;

    if (!is_sql_cmd)
    {
     int i;

     for (i = 0; i < nfields; i++)
     {
      if (PQgetisnull(res, row, i))
       values[i] = ((void*)0);
      else
       values[i] = PQgetvalue(res, row, i);
     }
    }
    else
    {
     values[0] = PQcmdStatus(res);
    }


    tuple = BuildTupleFromCStrings(attinmeta, values);
    tuplestore_puttuple(tupstore, tuple);
   }


   restoreLocalGucs(nestlevel);


   tuplestore_donestoring(tupstore);
  }
 }
 PG_FINALLY();
 {

  PQclear(res);
 }
 PG_END_TRY();
}
