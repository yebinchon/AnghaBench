
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int attname; int attnotnull; } ;
struct TYPE_12__ {int ii_NumIndexKeyAttrs; scalar_t__* ii_IndexAttrNumbers; } ;
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ relispartition; } ;
typedef TYPE_2__* Relation ;
typedef int IndexStmt ;
typedef TYPE_3__ IndexInfo ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int ATTNUM ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (scalar_t__) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int elog (int ,char*,scalar_t__,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ relationHasPrimaryKey (TYPE_2__*) ;

void
index_check_primary_key(Relation heapRel,
      IndexInfo *indexInfo,
      bool is_alter_table,
      IndexStmt *stmt)
{
 int i;







 if ((is_alter_table || heapRel->rd_rel->relispartition) &&
  relationHasPrimaryKey(heapRel))
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
     errmsg("multiple primary keys for table \"%s\" are not allowed",
      RelationGetRelationName(heapRel))));
 }






 for (i = 0; i < indexInfo->ii_NumIndexKeyAttrs; i++)
 {
  AttrNumber attnum = indexInfo->ii_IndexAttrNumbers[i];
  HeapTuple atttuple;
  Form_pg_attribute attform;

  if (attnum == 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("primary keys cannot be expressions")));


  if (attnum < 0)
   continue;

  atttuple = SearchSysCache2(ATTNUM,
           ObjectIdGetDatum(RelationGetRelid(heapRel)),
           Int16GetDatum(attnum));
  if (!HeapTupleIsValid(atttuple))
   elog(ERROR, "cache lookup failed for attribute %d of relation %u",
     attnum, RelationGetRelid(heapRel));
  attform = (Form_pg_attribute) GETSTRUCT(atttuple);

  if (!attform->attnotnull)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("primary key column \"%s\" is not marked NOT NULL",
       NameStr(attform->attname))));

  ReleaseSysCache(atttuple);
 }
}
