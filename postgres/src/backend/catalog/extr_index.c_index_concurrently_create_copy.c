
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int values; } ;
typedef TYPE_2__ oidvector ;
struct TYPE_19__ {int values; } ;
typedef TYPE_3__ int2vector ;
typedef int TupleDesc ;
struct TYPE_22__ {int attname; } ;
struct TYPE_21__ {int ii_NumIndexAttrs; int * ii_IndexAttrNumbers; int ii_Unique; int ii_Am; int ii_NumIndexKeyAttrs; int * ii_Predicate; int * ii_Expressions; int * ii_ExclusionOps; } ;
struct TYPE_20__ {int rd_indcollation; TYPE_1__* rd_rel; } ;
struct TYPE_17__ {int reltablespace; int relam; } ;
typedef TYPE_4__* Relation ;
typedef int Oid ;
typedef int List ;
typedef TYPE_5__ IndexInfo ;
typedef int HeapTuple ;
typedef TYPE_6__* Form_pg_attribute ;
typedef int Expr ;
typedef int Datum ;


 int Anum_pg_class_reloptions ;
 int Anum_pg_index_indclass ;
 int Anum_pg_index_indexprs ;
 int Anum_pg_index_indoption ;
 int Anum_pg_index_indpred ;
 int Assert (int) ;
 TYPE_5__* BuildIndexInfo (TYPE_4__*) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int INDEX_CREATE_CONCURRENT ;
 int INDEX_CREATE_SKIP_BUILD ;
 int InvalidOid ;
 int * NIL ;
 int NameStr (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int RelationGetDescr (TYPE_4__*) ;
 int ReleaseSysCache (int ) ;
 int RowExclusiveLock ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 char* TextDatumGetCString (int ) ;
 TYPE_6__* TupleDescAttr (int ,int) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int index_close (TYPE_4__*,int ) ;
 int index_create (TYPE_4__*,char const*,int ,int ,int ,int ,TYPE_5__*,int *,int ,int ,int ,int ,int ,int ,int,int ,int,int,int *) ;
 TYPE_4__* index_open (int ,int ) ;
 int * lappend (int *,int ) ;
 TYPE_5__* makeIndexInfo (int,int ,int ,int *,int *,int ,int,int) ;
 int * make_ands_implicit (int *) ;
 int pfree (char*) ;
 scalar_t__ stringToNode (char*) ;

Oid
index_concurrently_create_copy(Relation heapRelation, Oid oldIndexId, const char *newName)
{
 Relation indexRelation;
 IndexInfo *oldInfo,
      *newInfo;
 Oid newIndexId = InvalidOid;
 HeapTuple indexTuple,
    classTuple;
 Datum indclassDatum,
    colOptionDatum,
    optionDatum;
 oidvector *indclass;
 int2vector *indcoloptions;
 bool isnull;
 List *indexColNames = NIL;
 List *indexExprs = NIL;
 List *indexPreds = NIL;

 indexRelation = index_open(oldIndexId, RowExclusiveLock);


 oldInfo = BuildIndexInfo(indexRelation);





 if (oldInfo->ii_ExclusionOps != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("concurrent index creation for exclusion constraints is not supported")));


 indexTuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(oldIndexId));
 if (!HeapTupleIsValid(indexTuple))
  elog(ERROR, "cache lookup failed for index %u", oldIndexId);
 indclassDatum = SysCacheGetAttr(INDEXRELID, indexTuple,
         Anum_pg_index_indclass, &isnull);
 Assert(!isnull);
 indclass = (oidvector *) DatumGetPointer(indclassDatum);

 colOptionDatum = SysCacheGetAttr(INDEXRELID, indexTuple,
          Anum_pg_index_indoption, &isnull);
 Assert(!isnull);
 indcoloptions = (int2vector *) DatumGetPointer(colOptionDatum);


 classTuple = SearchSysCache1(RELOID, oldIndexId);
 if (!HeapTupleIsValid(classTuple))
  elog(ERROR, "cache lookup failed for relation %u", oldIndexId);
 optionDatum = SysCacheGetAttr(RELOID, classTuple,
          Anum_pg_class_reloptions, &isnull);






 if (oldInfo->ii_Expressions != NIL)
 {
  Datum exprDatum;
  char *exprString;

  exprDatum = SysCacheGetAttr(INDEXRELID, indexTuple,
         Anum_pg_index_indexprs, &isnull);
  Assert(!isnull);
  exprString = TextDatumGetCString(exprDatum);
  indexExprs = (List *) stringToNode(exprString);
  pfree(exprString);
 }
 if (oldInfo->ii_Predicate != NIL)
 {
  Datum predDatum;
  char *predString;

  predDatum = SysCacheGetAttr(INDEXRELID, indexTuple,
         Anum_pg_index_indpred, &isnull);
  Assert(!isnull);
  predString = TextDatumGetCString(predDatum);
  indexPreds = (List *) stringToNode(predString);


  indexPreds = make_ands_implicit((Expr *) indexPreds);
  pfree(predString);
 }






 newInfo = makeIndexInfo(oldInfo->ii_NumIndexAttrs,
       oldInfo->ii_NumIndexKeyAttrs,
       oldInfo->ii_Am,
       indexExprs,
       indexPreds,
       oldInfo->ii_Unique,
       0,
       1);






 for (int i = 0; i < oldInfo->ii_NumIndexAttrs; i++)
 {
  TupleDesc indexTupDesc = RelationGetDescr(indexRelation);
  Form_pg_attribute att = TupleDescAttr(indexTupDesc, i);

  indexColNames = lappend(indexColNames, NameStr(att->attname));
  newInfo->ii_IndexAttrNumbers[i] = oldInfo->ii_IndexAttrNumbers[i];
 }
 newIndexId = index_create(heapRelation,
         newName,
         InvalidOid,
         InvalidOid,
         InvalidOid,
         InvalidOid,
         newInfo,
         indexColNames,
         indexRelation->rd_rel->relam,
         indexRelation->rd_rel->reltablespace,
         indexRelation->rd_indcollation,
         indclass->values,
         indcoloptions->values,
         optionDatum,
         INDEX_CREATE_SKIP_BUILD | INDEX_CREATE_CONCURRENT,
         0,
         1,
         0,
         ((void*)0));


 index_close(indexRelation, NoLock);
 ReleaseSysCache(indexTuple);
 ReleaseSysCache(classTuple);

 return newIndexId;
}
