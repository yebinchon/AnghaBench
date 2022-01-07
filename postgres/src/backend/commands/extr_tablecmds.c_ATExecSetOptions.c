
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int repl_repl ;
typedef int repl_null ;
struct TYPE_13__ {scalar_t__ attnum; } ;
struct TYPE_12__ {int t_self; } ;
typedef int Relation ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int LOCKMODE ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef scalar_t__ Datum ;
typedef scalar_t__ AttrNumber ;


 int ATTNAME ;
 int Anum_pg_attribute_attoptions ;
 int AttributeRelationId ;
 int CatalogTupleUpdate (int ,int *,TYPE_1__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int InvokeObjectPostAlterHook (int ,int ,scalar_t__) ;
 int List ;
 int Natts_pg_attribute ;
 int ObjectAddressSubSet (int ,int ,int ,scalar_t__) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int ReleaseSysCache (TYPE_1__*) ;
 int RowExclusiveLock ;
 TYPE_1__* SearchSysCacheAttName (int ,char const*) ;
 scalar_t__ SysCacheGetAttr (int ,TYPE_1__*,int,int*) ;
 int attribute_reloptions (scalar_t__,int) ;
 int castNode (int ,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,...) ;
 int heap_freetuple (TYPE_1__*) ;
 TYPE_1__* heap_modify_tuple (TYPE_1__*,int ,scalar_t__*,int*,int*) ;
 int memset (int*,int,int) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 scalar_t__ transformRelOptions (scalar_t__,int ,int *,int *,int,int) ;

__attribute__((used)) static ObjectAddress
ATExecSetOptions(Relation rel, const char *colName, Node *options,
     bool isReset, LOCKMODE lockmode)
{
 Relation attrelation;
 HeapTuple tuple,
    newtuple;
 Form_pg_attribute attrtuple;
 AttrNumber attnum;
 Datum datum,
    newOptions;
 bool isnull;
 ObjectAddress address;
 Datum repl_val[Natts_pg_attribute];
 bool repl_null[Natts_pg_attribute];
 bool repl_repl[Natts_pg_attribute];

 attrelation = table_open(AttributeRelationId, RowExclusiveLock);

 tuple = SearchSysCacheAttName(RelationGetRelid(rel), colName);

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_COLUMN),
     errmsg("column \"%s\" of relation \"%s\" does not exist",
      colName, RelationGetRelationName(rel))));
 attrtuple = (Form_pg_attribute) GETSTRUCT(tuple);

 attnum = attrtuple->attnum;
 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"",
      colName)));


 datum = SysCacheGetAttr(ATTNAME, tuple, Anum_pg_attribute_attoptions,
       &isnull);
 newOptions = transformRelOptions(isnull ? (Datum) 0 : datum,
          castNode(List, options), ((void*)0), ((void*)0),
          0, isReset);

 (void) attribute_reloptions(newOptions, 1);


 memset(repl_null, 0, sizeof(repl_null));
 memset(repl_repl, 0, sizeof(repl_repl));
 if (newOptions != (Datum) 0)
  repl_val[Anum_pg_attribute_attoptions - 1] = newOptions;
 else
  repl_null[Anum_pg_attribute_attoptions - 1] = 1;
 repl_repl[Anum_pg_attribute_attoptions - 1] = 1;
 newtuple = heap_modify_tuple(tuple, RelationGetDescr(attrelation),
         repl_val, repl_null, repl_repl);


 CatalogTupleUpdate(attrelation, &newtuple->t_self, newtuple);

 InvokeObjectPostAlterHook(RelationRelationId,
         RelationGetRelid(rel),
         attrtuple->attnum);
 ObjectAddressSubSet(address, RelationRelationId,
      RelationGetRelid(rel), attnum);

 heap_freetuple(newtuple);

 ReleaseSysCache(tuple);

 table_close(attrelation, RowExclusiveLock);

 return address;
}
