
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tablespace_id; scalar_t__ db_id; } ;
typedef TYPE_1__ xl_dbase_drop_rec ;
struct stat {int st_mode; } ;
typedef int TableScanDesc ;
struct TYPE_4__ {scalar_t__ oid; } ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_tablespace ;


 int AccessShareLock ;
 int ForwardScanDirection ;
 int GETSTRUCT (int *) ;
 scalar_t__ GLOBALTABLESPACE_OID ;
 char* GetDatabasePath (scalar_t__,scalar_t__) ;
 int RM_DBASE_ID ;
 int S_ISDIR (int ) ;
 int TableSpaceRelationId ;
 int WARNING ;
 int XLOG_DBASE_DROP ;
 int XLR_SPECIAL_REL_UPDATE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int) ;
 int XLogRegisterData (char*,int) ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int * heap_getnext (int ,int ) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int pfree (char*) ;
 int rmtree (char*,int) ;
 int table_beginscan_catalog (int ,int ,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
remove_dbtablespaces(Oid db_id)
{
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

  if (lstat(dstpath, &st) < 0 || !S_ISDIR(st.st_mode))
  {

   pfree(dstpath);
   continue;
  }

  if (!rmtree(dstpath, 1))
   ereport(WARNING,
     (errmsg("some useless files may be left behind in old database directory \"%s\"",
       dstpath)));


  {
   xl_dbase_drop_rec xlrec;

   xlrec.db_id = db_id;
   xlrec.tablespace_id = dsttablespace;

   XLogBeginInsert();
   XLogRegisterData((char *) &xlrec, sizeof(xl_dbase_drop_rec));

   (void) XLogInsert(RM_DBASE_ID,
         XLOG_DBASE_DROP | XLR_SPECIAL_REL_UPDATE);
  }

  pfree(dstpath);
 }

 table_endscan(scan);
 table_close(rel, AccessShareLock);
}
