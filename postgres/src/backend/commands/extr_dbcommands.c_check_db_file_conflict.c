
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int TableScanDesc ;
struct TYPE_2__ {scalar_t__ oid; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_1__* Form_pg_tablespace ;


 int AccessShareLock ;
 int ForwardScanDirection ;
 int GETSTRUCT (int *) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 char* GetDatabasePath (scalar_t__,scalar_t__) ;
 int TableSpaceRelationId ;
 int * heap_getnext (int ,int ) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int pfree (char*) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static bool
check_db_file_conflict(Oid db_id)
{
 bool result = 0;
 Relation rel;
 TableScanDesc scan;
 HeapTuple tuple;

 rel = table_open(TableSpaceRelationId, AccessShareLock);
 scan = table_beginscan_catalog(rel, 0, ((void*)0));
 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  Form_pg_tablespace spcform = (Form_pg_tablespace) GETSTRUCT(tuple);
  Oid dsttablespace = spcform->oid;
  char *dstpath;
  struct stat st;


  if (dsttablespace == GLOBALTABLESPACE_OID)
   continue;

  dstpath = GetDatabasePath(db_id, dsttablespace);

  if (lstat(dstpath, &st) == 0)
  {

   pfree(dstpath);
   result = 1;
   break;
  }

  pfree(dstpath);
 }

 table_endscan(scan);
 table_close(rel, AccessShareLock);

 return result;
}
