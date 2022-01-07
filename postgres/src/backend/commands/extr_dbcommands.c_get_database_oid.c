
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 int AccessShareLock ;
 int Anum_pg_database_datname ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int DatabaseNameIndexId ;
 int DatabaseRelationId ;
 int ERRCODE_UNDEFINED_DATABASE ;
 int ERROR ;
 int F_NAMEEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OidIsValid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_database_oid(const char *dbname, bool missing_ok)
{
 Relation pg_database;
 ScanKeyData entry[1];
 SysScanDesc scan;
 HeapTuple dbtuple;
 Oid oid;





 pg_database = table_open(DatabaseRelationId, AccessShareLock);
 ScanKeyInit(&entry[0],
    Anum_pg_database_datname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(dbname));
 scan = systable_beginscan(pg_database, DatabaseNameIndexId, 1,
         ((void*)0), 1, entry);

 dbtuple = systable_getnext(scan);


 if (HeapTupleIsValid(dbtuple))
  oid = ((Form_pg_database) GETSTRUCT(dbtuple))->oid;
 else
  oid = InvalidOid;

 systable_endscan(scan);
 table_close(pg_database, AccessShareLock);

 if (!OidIsValid(oid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_DATABASE),
     errmsg("database \"%s\" does not exist",
      dbname)));

 return oid;
}
