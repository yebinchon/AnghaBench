
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xloc ;
typedef int uint32 ;
typedef int sysid ;
typedef int nulls ;
typedef int XLogRecPtr ;
typedef int TupleDesc ;
typedef int TupOutputState ;
typedef int MemoryContext ;
typedef int DestReceiver ;
typedef int Datum ;
typedef int AttrNumber ;


 int CStringGetTextDatum (char*) ;
 int CommitTransactionCommand () ;
 int * CreateDestReceiver (int ) ;
 int CreateTemplateTupleDesc (int) ;
 int CurrentMemoryContext ;
 int DestRemoteSimple ;
 int GetFlushRecPtr () ;
 int GetStandbyFlushRecPtr () ;
 int GetSystemIdentifier () ;
 int INT4OID ;
 int Int32GetDatum (int ) ;
 scalar_t__ InvalidOid ;
 int MAXFNAMELEN ;
 int MemSet (int*,int,int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ MyDatabaseId ;
 scalar_t__ RecoveryInProgress () ;
 int StartTransactionCommand () ;
 int TEXTOID ;
 int TTSOpsVirtual ;
 int ThisTimeLineID ;
 int TupleDescInitBuiltinEntry (int ,int ,char*,int ,int,int ) ;
 char* UINT64_FORMAT ;
 scalar_t__ am_cascading_walsender ;
 int * begin_tup_output_tupdesc (int *,int ,int *) ;
 int do_tup_output (int *,int *,int*) ;
 int end_tup_output (int *) ;
 char* get_database_name (scalar_t__) ;
 int snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void
IdentifySystem(void)
{
 char sysid[32];
 char xloc[MAXFNAMELEN];
 XLogRecPtr logptr;
 char *dbname = ((void*)0);
 DestReceiver *dest;
 TupOutputState *tstate;
 TupleDesc tupdesc;
 Datum values[4];
 bool nulls[4];







 snprintf(sysid, sizeof(sysid), UINT64_FORMAT,
    GetSystemIdentifier());

 am_cascading_walsender = RecoveryInProgress();
 if (am_cascading_walsender)
 {

  logptr = GetStandbyFlushRecPtr();
 }
 else
  logptr = GetFlushRecPtr();

 snprintf(xloc, sizeof(xloc), "%X/%X", (uint32) (logptr >> 32), (uint32) logptr);

 if (MyDatabaseId != InvalidOid)
 {
  MemoryContext cur = CurrentMemoryContext;


  StartTransactionCommand();

  MemoryContextSwitchTo(cur);
  dbname = get_database_name(MyDatabaseId);
  CommitTransactionCommand();

  MemoryContextSwitchTo(cur);
 }

 dest = CreateDestReceiver(DestRemoteSimple);
 MemSet(nulls, 0, sizeof(nulls));


 tupdesc = CreateTemplateTupleDesc(4);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 1, "systemid",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 2, "timeline",
         INT4OID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 3, "xlogpos",
         TEXTOID, -1, 0);
 TupleDescInitBuiltinEntry(tupdesc, (AttrNumber) 4, "dbname",
         TEXTOID, -1, 0);


 tstate = begin_tup_output_tupdesc(dest, tupdesc, &TTSOpsVirtual);


 values[0] = CStringGetTextDatum(sysid);


 values[1] = Int32GetDatum(ThisTimeLineID);


 values[2] = CStringGetTextDatum(xloc);


 if (dbname)
  values[3] = CStringGetTextDatum(dbname);
 else
  nulls[3] = 1;


 do_tup_output(tstate, values, nulls);

 end_tup_output(tstate);
}
