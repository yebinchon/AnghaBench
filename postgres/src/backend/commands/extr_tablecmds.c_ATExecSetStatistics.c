
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef char const* int16 ;
struct TYPE_24__ {int attnum; int attstattarget; int attname; } ;
struct TYPE_23__ {int t_self; } ;
struct TYPE_22__ {TYPE_3__* rd_index; TYPE_1__* rd_rel; } ;
struct TYPE_20__ {scalar_t__* values; } ;
struct TYPE_21__ {int indnkeyatts; TYPE_2__ indkey; } ;
struct TYPE_19__ {scalar_t__ relkind; } ;
typedef TYPE_4__* Relation ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int LOCKMODE ;
typedef TYPE_5__* HeapTuple ;
typedef TYPE_6__* Form_pg_attribute ;
typedef int AttrNumber ;


 int Assert (int ) ;
 int AttributeRelationId ;
 int CatalogTupleUpdate (TYPE_4__*,int *,TYPE_5__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_5__*) ;
 int HeapTupleIsValid (TYPE_5__*) ;
 int Integer ;
 int InvokeObjectPostAlterHook (int ,int ,int) ;
 int IsA (int *,int ) ;
 char const* NameStr (int ) ;
 int ObjectAddressSubSet (int ,int ,int ,int) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationGetRelationName (TYPE_4__*) ;
 int RelationGetRelid (TYPE_4__*) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_5__* SearchSysCacheCopyAttName (int ,char const*) ;
 TYPE_5__* SearchSysCacheCopyAttNum (int ,char const*) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int heap_freetuple (TYPE_5__*) ;
 int intVal (int *) ;
 int table_close (TYPE_4__*,int ) ;
 TYPE_4__* table_open (int ,int ) ;

__attribute__((used)) static ObjectAddress
ATExecSetStatistics(Relation rel, const char *colName, int16 colNum, Node *newValue, LOCKMODE lockmode)
{
 int newtarget;
 Relation attrelation;
 HeapTuple tuple;
 Form_pg_attribute attrtuple;
 AttrNumber attnum;
 ObjectAddress address;

 Assert(IsA(newValue, Integer));
 newtarget = intVal(newValue);




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

 attrelation = table_open(AttributeRelationId, RowExclusiveLock);

 if (colName)
 {
  tuple = SearchSysCacheCopyAttName(RelationGetRelid(rel), colName);

  if (!HeapTupleIsValid(tuple))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column \"%s\" of relation \"%s\" does not exist",
       colName, RelationGetRelationName(rel))));
 }
 else
 {
  tuple = SearchSysCacheCopyAttNum(RelationGetRelid(rel), colNum);

  if (!HeapTupleIsValid(tuple))
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column number %d of relation \"%s\" does not exist",
       colNum, RelationGetRelationName(rel))));
 }

 attrtuple = (Form_pg_attribute) GETSTRUCT(tuple);

 attnum = attrtuple->attnum;
 if (attnum <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot alter system column \"%s\"",
      colName)));

 if (rel->rd_rel->relkind == RELKIND_INDEX ||
  rel->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
 {
  if (attnum > rel->rd_index->indnkeyatts)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot alter statistics on included column \"%s\" of index \"%s\"",
       NameStr(attrtuple->attname), RelationGetRelationName(rel))));
  else if (rel->rd_index->indkey.values[attnum - 1] != 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot alter statistics on non-expression column \"%s\" of index \"%s\"",
       NameStr(attrtuple->attname), RelationGetRelationName(rel)),
      errhint("Alter statistics on table column instead.")));
 }

 attrtuple->attstattarget = newtarget;

 CatalogTupleUpdate(attrelation, &tuple->t_self, tuple);

 InvokeObjectPostAlterHook(RelationRelationId,
         RelationGetRelid(rel),
         attrtuple->attnum);
 ObjectAddressSubSet(address, RelationRelationId,
      RelationGetRelid(rel), attnum);
 heap_freetuple(tuple);

 table_close(attrelation, RowExclusiveLock);

 return address;
}
