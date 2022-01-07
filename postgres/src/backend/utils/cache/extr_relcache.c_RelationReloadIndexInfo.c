
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ relkind; scalar_t__ relisshared; } ;
struct TYPE_24__ {int indislive; int indisready; int indcheckxmin; int indisvalid; int indisclustered; int indimmediate; int indisexclusion; int indisprimary; int indisunique; } ;
struct TYPE_23__ {int t_data; } ;
struct TYPE_22__ {int rd_isvalid; TYPE_2__* rd_indextuple; TYPE_1__* rd_index; int * rd_options; TYPE_6__* rd_rel; int * rd_amcache; } ;
struct TYPE_21__ {int t_data; } ;
struct TYPE_20__ {int indislive; int indisready; int indcheckxmin; int indisvalid; int indisclustered; int indimmediate; int indisexclusion; int indisprimary; int indisunique; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__* HeapTuple ;
typedef TYPE_5__* Form_pg_index ;
typedef scalar_t__ Form_pg_class ;


 int Assert (int) ;
 int CLASS_TUPLE_SIZE ;
 scalar_t__ ClassOidIndexId ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_4__*) ;
 int HeapTupleHeaderGetXmin (int ) ;
 int HeapTupleHeaderSetXmin (int ,int ) ;
 int HeapTupleIsValid (TYPE_4__*) ;
 int INDEXRELID ;
 int IsSystemRelation (TYPE_3__*) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RelationCloseSmgr (TYPE_3__*) ;
 scalar_t__ RelationGetRelid (TYPE_3__*) ;
 int RelationInitPhysicalAddr (TYPE_3__*) ;
 int RelationParseRelOptions (TYPE_3__*,TYPE_4__*) ;
 int ReleaseSysCache (TYPE_4__*) ;
 TYPE_4__* ScanPgRelation (scalar_t__,int,int) ;
 TYPE_4__* SearchSysCache1 (int ,int ) ;
 int criticalRelcachesBuilt ;
 int elog (int ,char*,scalar_t__) ;
 int heap_freetuple (TYPE_4__*) ;
 int memcpy (TYPE_6__*,scalar_t__,int ) ;
 int pfree (int *) ;

__attribute__((used)) static void
RelationReloadIndexInfo(Relation relation)
{
 bool indexOK;
 HeapTuple pg_class_tuple;
 Form_pg_class relp;


 Assert((relation->rd_rel->relkind == RELKIND_INDEX ||
   relation->rd_rel->relkind == RELKIND_PARTITIONED_INDEX) &&
     !relation->rd_isvalid);


 RelationCloseSmgr(relation);


 if (relation->rd_amcache)
  pfree(relation->rd_amcache);
 relation->rd_amcache = ((void*)0);
 if (relation->rd_rel->relisshared && !criticalRelcachesBuilt)
 {
  relation->rd_isvalid = 1;
  return;
 }







 indexOK = (RelationGetRelid(relation) != ClassOidIndexId);
 pg_class_tuple = ScanPgRelation(RelationGetRelid(relation), indexOK, 0);
 if (!HeapTupleIsValid(pg_class_tuple))
  elog(ERROR, "could not find pg_class tuple for index %u",
    RelationGetRelid(relation));
 relp = (Form_pg_class) GETSTRUCT(pg_class_tuple);
 memcpy(relation->rd_rel, relp, CLASS_TUPLE_SIZE);

 if (relation->rd_options)
  pfree(relation->rd_options);
 RelationParseRelOptions(relation, pg_class_tuple);

 heap_freetuple(pg_class_tuple);

 RelationInitPhysicalAddr(relation);
 if (!IsSystemRelation(relation))
 {
  HeapTuple tuple;
  Form_pg_index index;

  tuple = SearchSysCache1(INDEXRELID,
        ObjectIdGetDatum(RelationGetRelid(relation)));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for index %u",
     RelationGetRelid(relation));
  index = (Form_pg_index) GETSTRUCT(tuple);







  relation->rd_index->indisunique = index->indisunique;
  relation->rd_index->indisprimary = index->indisprimary;
  relation->rd_index->indisexclusion = index->indisexclusion;
  relation->rd_index->indimmediate = index->indimmediate;
  relation->rd_index->indisclustered = index->indisclustered;
  relation->rd_index->indisvalid = index->indisvalid;
  relation->rd_index->indcheckxmin = index->indcheckxmin;
  relation->rd_index->indisready = index->indisready;
  relation->rd_index->indislive = index->indislive;


  HeapTupleHeaderSetXmin(relation->rd_indextuple->t_data,
          HeapTupleHeaderGetXmin(tuple->t_data));

  ReleaseSysCache(tuple);
 }


 relation->rd_isvalid = 1;
}
