
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_26__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attcollation; int attinhcount; int attislocal; scalar_t__ attnotnull; scalar_t__ attisdropped; int attname; } ;
struct TYPE_25__ {int t_self; } ;
struct TYPE_24__ {TYPE_1__* rd_rel; } ;
struct TYPE_23__ {int natts; } ;
struct TYPE_22__ {scalar_t__ relkind; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_attribute ;
typedef int AttrNumber ;


 int Assert (int) ;
 int AttributeRelationId ;
 int CatalogTupleUpdate (TYPE_3__*,int *,TYPE_4__*) ;
 int ERRCODE_COLLATION_MISMATCH ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 int GETSTRUCT (TYPE_4__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_4__*) ;
 char* NameStr (int ) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 TYPE_2__* RelationGetDescr (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int RelationGetRelid (TYPE_3__*) ;
 int RowExclusiveLock ;
 TYPE_4__* SearchSysCacheCopyAttName (int ,char*) ;
 TYPE_5__* TupleDescAttr (TYPE_2__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,...) ;
 int heap_freetuple (TYPE_4__*) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (int ,int ) ;

__attribute__((used)) static void
MergeAttributesIntoExisting(Relation child_rel, Relation parent_rel)
{
 Relation attrrel;
 AttrNumber parent_attno;
 int parent_natts;
 TupleDesc tupleDesc;
 HeapTuple tuple;
 bool child_is_partition = 0;

 attrrel = table_open(AttributeRelationId, RowExclusiveLock);

 tupleDesc = RelationGetDescr(parent_rel);
 parent_natts = tupleDesc->natts;


 if (parent_rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  child_is_partition = 1;

 for (parent_attno = 1; parent_attno <= parent_natts; parent_attno++)
 {
  Form_pg_attribute attribute = TupleDescAttr(tupleDesc,
             parent_attno - 1);
  char *attributeName = NameStr(attribute->attname);


  if (attribute->attisdropped)
   continue;


  tuple = SearchSysCacheCopyAttName(RelationGetRelid(child_rel),
            attributeName);
  if (HeapTupleIsValid(tuple))
  {

   Form_pg_attribute childatt = (Form_pg_attribute) GETSTRUCT(tuple);

   if (attribute->atttypid != childatt->atttypid ||
    attribute->atttypmod != childatt->atttypmod)
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("child table \"%s\" has different type for column \"%s\"",
        RelationGetRelationName(child_rel),
        attributeName)));

   if (attribute->attcollation != childatt->attcollation)
    ereport(ERROR,
      (errcode(ERRCODE_COLLATION_MISMATCH),
       errmsg("child table \"%s\" has different collation for column \"%s\"",
        RelationGetRelationName(child_rel),
        attributeName)));





   if (attribute->attnotnull && !childatt->attnotnull)
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("column \"%s\" in child table must be marked NOT NULL",
        attributeName)));





   childatt->attinhcount++;






   if (child_is_partition)
   {
    Assert(childatt->attinhcount == 1);
    childatt->attislocal = 0;
   }

   CatalogTupleUpdate(attrrel, &tuple->t_self, tuple);
   heap_freetuple(tuple);
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("child table is missing column \"%s\"",
       attributeName)));
  }
 }

 table_close(attrrel, RowExclusiveLock);
}
