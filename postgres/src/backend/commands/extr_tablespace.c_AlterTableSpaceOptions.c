
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
typedef int TableScanDesc ;
struct TYPE_15__ {int isReset; int options; int tablespacename; } ;
struct TYPE_14__ {int oid; } ;
struct TYPE_13__ {int t_self; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_tablespace ;
typedef scalar_t__ Datum ;
typedef TYPE_3__ AlterTableSpaceOptionsStmt ;


 int ACLCHECK_NOT_OWNER ;
 int Anum_pg_tablespace_spcname ;
 int Anum_pg_tablespace_spcoptions ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int GetUserId () ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int Natts_pg_tablespace ;
 int NoLock ;
 int OBJECT_TABLESPACE ;
 int RelationGetDescr (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TableSpaceRelationId ;
 int aclcheck_error (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int heap_freetuple (TYPE_1__*) ;
 scalar_t__ heap_getattr (TYPE_1__*,int,int ,int*) ;
 TYPE_1__* heap_getnext (int ,int ) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,scalar_t__*,int*,int*) ;
 int memset (int*,int,int) ;
 int pg_tablespace_ownercheck (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;
 int tablespace_reloptions (scalar_t__,int) ;
 scalar_t__ transformRelOptions (scalar_t__,int ,int *,int *,int,int ) ;

Oid
AlterTableSpaceOptions(AlterTableSpaceOptionsStmt *stmt)
{
 Relation rel;
 ScanKeyData entry[1];
 TableScanDesc scandesc;
 HeapTuple tup;
 Oid tablespaceoid;
 Datum datum;
 Datum newOptions;
 Datum repl_val[Natts_pg_tablespace];
 bool isnull;
 bool repl_null[Natts_pg_tablespace];
 bool repl_repl[Natts_pg_tablespace];
 HeapTuple newtuple;


 rel = table_open(TableSpaceRelationId, RowExclusiveLock);

 ScanKeyInit(&entry[0],
    Anum_pg_tablespace_spcname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(stmt->tablespacename));
 scandesc = table_beginscan_catalog(rel, 1, entry);
 tup = heap_getnext(scandesc, ForwardScanDirection);
 if (!HeapTupleIsValid(tup))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("tablespace \"%s\" does not exist",
      stmt->tablespacename)));

 tablespaceoid = ((Form_pg_tablespace) GETSTRUCT(tup))->oid;


 if (!pg_tablespace_ownercheck(tablespaceoid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, OBJECT_TABLESPACE,
        stmt->tablespacename);


 datum = heap_getattr(tup, Anum_pg_tablespace_spcoptions,
       RelationGetDescr(rel), &isnull);
 newOptions = transformRelOptions(isnull ? (Datum) 0 : datum,
          stmt->options, ((void*)0), ((void*)0), 0,
          stmt->isReset);
 (void) tablespace_reloptions(newOptions, 1);


 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));
 if (newOptions != (Datum) 0)
  repl_val[Anum_pg_tablespace_spcoptions - 1] = newOptions;
 else
  repl_null[Anum_pg_tablespace_spcoptions - 1] = 1;
 repl_repl[Anum_pg_tablespace_spcoptions - 1] = 1;
 newtuple = heap_modify_tuple(tup, RelationGetDescr(rel), repl_val,
         repl_null, repl_repl);


 CatalogTupleUpdate(rel, &newtuple->t_self, newtuple);

 InvokeObjectPostAlterHook(TableSpaceRelationId, tablespaceoid, 0);

 heap_freetuple(newtuple);


 table_endscan(scandesc);
 table_close(rel, NoLock);

 return tablespaceoid;
}
