
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_11__ {int stxstattarget; int defnames; int missing_ok; } ;
struct TYPE_10__ {int t_self; } ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;
typedef TYPE_2__ AlterStatsStmt ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_statistic_ext_stxstattarget ;
 int Assert (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int DeconstructQualifiedName (int ,char**,char**) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int GetUserId () ;
 int Int32GetDatum (int) ;
 int InvalidObjectAddress ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NOTICE ;
 int NameListToString (int ) ;
 int Natts_pg_statistic_ext ;
 int OBJECT_STATISTIC_EXT ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 int STATEXTOID ;
 TYPE_1__* SearchSysCache1 (int ,int ) ;
 int StatisticExtRelationId ;
 int WARNING ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_statistics_object_oid (int ,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int pg_statistics_object_ownercheck (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
AlterStatistics(AlterStatsStmt *stmt)
{
 Relation rel;
 Oid stxoid;
 HeapTuple oldtup;
 HeapTuple newtup;
 Datum repl_val[Natts_pg_statistic_ext];
 bool repl_null[Natts_pg_statistic_ext];
 bool repl_repl[Natts_pg_statistic_ext];
 ObjectAddress address;
 int newtarget = stmt->stxstattarget;


 if (newtarget < -1)
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("statistics target %d is too low",
      newtarget)));
 }
 else if (newtarget > 10000)
 {
  newtarget = 10000;
  ereport(WARNING,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("lowering statistics target to %d",
      newtarget)));
 }


 stxoid = get_statistics_object_oid(stmt->defnames, stmt->missing_ok);






 if (!OidIsValid(stxoid))
 {
  char *schemaname;
  char *statname;

  Assert(stmt->missing_ok);

  DeconstructQualifiedName(stmt->defnames, &schemaname, &statname);

  if (schemaname)
   ereport(NOTICE,
     (errmsg("statistics object \"%s.%s\" does not exist, skipping",
       schemaname, statname)));
  else
   ereport(NOTICE,
     (errmsg("statistics object \"%s\" does not exist, skipping",
       statname)));

  return InvalidObjectAddress;
 }


 rel = table_open(StatisticExtRelationId, RowExclusiveLock);

 oldtup = SearchSysCache1(STATEXTOID, ObjectIdGetDatum(stxoid));


 if (!pg_statistics_object_ownercheck(stxoid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_STATISTIC_EXT,
        NameListToString(stmt->defnames));


 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));


 repl_repl[Anum_pg_statistic_ext_stxstattarget - 1] = 1;
 repl_val[Anum_pg_statistic_ext_stxstattarget - 1] = Int32GetDatum(newtarget);

 newtup = heap_modify_tuple(oldtup, RelationGetDescr(rel),
          repl_val, repl_null, repl_repl);


 CatalogTupleUpdate(rel, &newtup->t_self, newtup);

 InvokeObjectPostAlterHook(StatisticExtRelationId, stxoid, 0);

 ObjectAddressSet(address, StatisticExtRelationId, stxoid);






 heap_freetuple(newtup);
 ReleaseSysCache(oldtup);

 table_close(rel, RowExclusiveLock);

 return address;
}
