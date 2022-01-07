
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int repl_val ;
typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_31__ {int fdwvalidator; } ;
struct TYPE_30__ {int fdwid; } ;
struct TYPE_29__ {scalar_t__ attnum; } ;
struct TYPE_28__ {int ftserver; } ;
struct TYPE_27__ {int t_self; } ;
struct TYPE_26__ {int rd_id; } ;
typedef TYPE_1__* Relation ;
typedef int ObjectAddress ;
typedef int List ;
typedef int LOCKMODE ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_foreign_table ;
typedef TYPE_4__* Form_pg_attribute ;
typedef TYPE_5__ ForeignServer ;
typedef TYPE_6__ ForeignDataWrapper ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int ATTNAME ;
 int AccessShareLock ;
 int Anum_pg_attribute_attfdwoptions ;
 int AttributeRelationId ;
 int CatalogTupleUpdate (TYPE_1__*,int *,TYPE_2__*) ;
 int DatumGetPointer (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FOREIGNTABLEREL ;
 int ForeignTableRelationId ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 TYPE_6__* GetForeignDataWrapper (int ) ;
 TYPE_5__* GetForeignServer (int ) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvalidObjectAddress ;
 int InvokeObjectPostAlterHook (int ,int ,scalar_t__) ;
 int * NIL ;
 int Natts_pg_attribute ;
 int ObjectAddressSubSet (int ,int ,int ,scalar_t__) ;
 int PointerGetDatum (int *) ;
 scalar_t__ PointerIsValid (int ) ;
 int RelationGetDescr (TYPE_1__*) ;
 char const* RelationGetRelationName (TYPE_1__*) ;
 int RelationGetRelid (TYPE_1__*) ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_2__*) ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCache1 (int ,int ) ;
 TYPE_2__* SearchSysCacheAttName (int ,char const*) ;
 int SysCacheGetAttr (int ,TYPE_2__*,int,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int heap_freetuple (TYPE_2__*) ;
 TYPE_2__* heap_modify_tuple (TYPE_2__*,int ,int*,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;
 int transformGenericOptions (int ,int,int *,int ) ;

__attribute__((used)) static ObjectAddress
ATExecAlterColumnGenericOptions(Relation rel,
        const char *colName,
        List *options,
        LOCKMODE lockmode)
{
 Relation ftrel;
 Relation attrel;
 ForeignServer *server;
 ForeignDataWrapper *fdw;
 HeapTuple tuple;
 HeapTuple newtuple;
 bool isnull;
 Datum repl_val[Natts_pg_attribute];
 bool repl_null[Natts_pg_attribute];
 bool repl_repl[Natts_pg_attribute];
 Datum datum;
 Form_pg_foreign_table fttableform;
 Form_pg_attribute atttableform;
 AttrNumber attnum;
 ObjectAddress address;

 if (options == NIL)
  return InvalidObjectAddress;


 ftrel = table_open(ForeignTableRelationId, AccessShareLock);
 tuple = SearchSysCache1(FOREIGNTABLEREL, rel->rd_id);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("foreign table \"%s\" does not exist",
      RelationGetRelationName(rel))));
 fttableform = (Form_pg_foreign_table) GETSTRUCT(tuple);
 server = GetForeignServer(fttableform->ftserver);
 fdw = GetForeignDataWrapper(server->fdwid);

 table_close(ftrel, AccessShareLock);
 ReleaseSysCache(tuple);

 attrel = table_open(AttributeRelationId, RowExclusiveLock);
 tuple = SearchSysCacheAttName(RelationGetRelid(rel), colName);
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));


 atttableform = (Form_pg_attribute) GETSTRUCT(tuple);
 attnum = atttableform->attnum;
 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"", colName)));



 memset(repl_val, 0, sizeof(repl_val));
 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));


 datum = SysCacheGetAttr(ATTNAME,
       tuple,
       Anum_pg_attribute_attfdwoptions,
       &isnull);
 if (isnull)
  datum = PointerGetDatum(((void*)0));


 datum = transformGenericOptions(AttributeRelationId,
         datum,
         options,
         fdw->fdwvalidator);

 if (PointerIsValid(DatumGetPointer(datum)))
  repl_val[Anum_pg_attribute_attfdwoptions - 1] = datum;
 else
  repl_null[Anum_pg_attribute_attfdwoptions - 1] = 1;

 repl_repl[Anum_pg_attribute_attfdwoptions - 1] = 1;



 newtuple = heap_modify_tuple(tuple, RelationGetDescr(attrel),
         repl_val, repl_null, repl_repl);

 CatalogTupleUpdate(attrel, &newtuple->t_self, newtuple);

 InvokeObjectPostAlterHook(RelationRelationId,
         RelationGetRelid(rel),
         atttableform->attnum);
 ObjectAddressSubSet(address, RelationRelationId,
      RelationGetRelid(rel), attnum);

 ReleaseSysCache(tuple);

 table_close(attrel, RowExclusiveLock);

 heap_freetuple(newtuple);

 return address;
}
