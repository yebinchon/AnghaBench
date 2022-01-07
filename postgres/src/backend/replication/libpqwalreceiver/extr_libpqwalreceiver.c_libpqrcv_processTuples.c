
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuplestore; int tupledesc; } ;
typedef TYPE_1__ WalRcvExecResult ;
typedef int PGresult ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef scalar_t__ AttrNumber ;
typedef int AttInMetadata ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int BuildTupleFromCStrings (int *,char**) ;
 int CreateTemplateTupleDesc (int const) ;
 int CurrentMemoryContext ;
 int ERROR ;
 int MaxTupleAttributeNumber ;
 int MemoryContextDelete (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PQfname (int *,int) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int ProcessWalRcvInterrupts () ;
 int * TupleDescGetAttInMetadata (int ) ;
 int TupleDescInitEntry (int ,scalar_t__,int ,int const,int,int ) ;
 int ereport (int ,int ) ;
 int errdetail (char*,int const,int) ;
 int errmsg (char*) ;
 int tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_puttuple (int ,int ) ;
 int work_mem ;

__attribute__((used)) static void
libpqrcv_processTuples(PGresult *pgres, WalRcvExecResult *walres,
        const int nRetTypes, const Oid *retTypes)
{
 int tupn;
 int coln;
 int nfields = PQnfields(pgres);
 HeapTuple tuple;
 AttInMetadata *attinmeta;
 MemoryContext rowcontext;
 MemoryContext oldcontext;


 if (nfields != nRetTypes)
  ereport(ERROR,
    (errmsg("invalid query response"),
     errdetail("Expected %d fields, got %d fields.",
         nRetTypes, nfields)));

 walres->tuplestore = tuplestore_begin_heap(1, 0, work_mem);


 walres->tupledesc = CreateTemplateTupleDesc(nRetTypes);
 for (coln = 0; coln < nRetTypes; coln++)
  TupleDescInitEntry(walres->tupledesc, (AttrNumber) coln + 1,
         PQfname(pgres, coln), retTypes[coln], -1, 0);
 attinmeta = TupleDescGetAttInMetadata(walres->tupledesc);


 if (PQntuples(pgres) == 0)
  return;


 rowcontext = AllocSetContextCreate(CurrentMemoryContext,
            "libpqrcv query result context",
            ALLOCSET_DEFAULT_SIZES);


 for (tupn = 0; tupn < PQntuples(pgres); tupn++)
 {
  char *cstrs[MaxTupleAttributeNumber];

  ProcessWalRcvInterrupts();


  oldcontext = MemoryContextSwitchTo(rowcontext);




  for (coln = 0; coln < nfields; coln++)
  {
   if (PQgetisnull(pgres, tupn, coln))
    cstrs[coln] = ((void*)0);
   else
    cstrs[coln] = PQgetvalue(pgres, tupn, coln);
  }


  tuple = BuildTupleFromCStrings(attinmeta, cstrs);
  tuplestore_puttuple(walres->tuplestore, tuple);


  MemoryContextSwitchTo(oldcontext);
  MemoryContextReset(rowcontext);
 }

 MemoryContextDelete(rowcontext);
}
