
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint16 ;
struct TYPE_15__ {scalar_t__* values; } ;
typedef TYPE_1__ oidvector ;
typedef int int16 ;
struct TYPE_20__ {scalar_t__ oid; int amhandler; } ;
struct TYPE_19__ {int indnkeyatts; scalar_t__ indisvalid; } ;
struct TYPE_18__ {int amcanorder; } ;
struct TYPE_17__ {scalar_t__* ii_ExclusionOps; } ;
struct TYPE_16__ {int rd_att; } ;
struct TYPE_14__ {scalar_t__ atttypid; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef TYPE_3__ IndexInfo ;
typedef TYPE_4__ IndexAmRoutine ;
typedef int HeapTuple ;
typedef TYPE_5__* Form_pg_index ;
typedef TYPE_6__* Form_pg_am ;
typedef int Datum ;


 int AMNAME ;
 int AccessShareLock ;
 int Anum_pg_index_indclass ;
 int Anum_pg_index_indcollation ;
 int Anum_pg_index_indexprs ;
 int Anum_pg_index_indpred ;
 int Assert (int) ;
 int ComputeIndexAttrs (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *,int *,scalar_t__,char const*,scalar_t__,int,int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_4__* GetIndexAmRoutine (int ) ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;
 int INDEX_MAX_KEYS ;
 scalar_t__ IndexGetRelation (scalar_t__,int) ;
 scalar_t__ IsPolymorphicType (scalar_t__) ;
 int NIL ;
 int NoLock ;
 int ObjectIdGetDatum (scalar_t__) ;
 int PointerGetDatum (char const*) ;
 int RelationGetExclusionInfo (TYPE_2__*,scalar_t__**,scalar_t__**,int **) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 TYPE_10__* TupleDescAttr (int ,int) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ get_opclass_input_type (scalar_t__) ;
 scalar_t__ heap_attisnull (int ,int ,int *) ;
 int index_close (TYPE_2__*,int ) ;
 TYPE_2__* index_open (scalar_t__,int ) ;
 int list_length (int *) ;
 TYPE_3__* makeIndexInfo (int,int,scalar_t__,int ,int ,int,int,int) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int op_input_types (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ palloc (int) ;

bool
CheckIndexCompatible(Oid oldId,
      const char *accessMethodName,
      List *attributeList,
      List *exclusionOpNames)
{
 bool isconstraint;
 Oid *typeObjectId;
 Oid *collationObjectId;
 Oid *classObjectId;
 Oid accessMethodId;
 Oid relationId;
 HeapTuple tuple;
 Form_pg_index indexForm;
 Form_pg_am accessMethodForm;
 IndexAmRoutine *amRoutine;
 bool amcanorder;
 int16 *coloptions;
 IndexInfo *indexInfo;
 int numberOfAttributes;
 int old_natts;
 bool isnull;
 bool ret = 1;
 oidvector *old_indclass;
 oidvector *old_indcollation;
 Relation irel;
 int i;
 Datum d;


 relationId = IndexGetRelation(oldId, 0);





 isconstraint = 0;

 numberOfAttributes = list_length(attributeList);
 Assert(numberOfAttributes > 0);
 Assert(numberOfAttributes <= INDEX_MAX_KEYS);


 tuple = SearchSysCache1(AMNAME, PointerGetDatum(accessMethodName));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("access method \"%s\" does not exist",
      accessMethodName)));
 accessMethodForm = (Form_pg_am) GETSTRUCT(tuple);
 accessMethodId = accessMethodForm->oid;
 amRoutine = GetIndexAmRoutine(accessMethodForm->amhandler);
 ReleaseSysCache(tuple);

 amcanorder = amRoutine->amcanorder;
 indexInfo = makeIndexInfo(numberOfAttributes, numberOfAttributes,
         accessMethodId, NIL, NIL, 0, 0, 0);
 typeObjectId = (Oid *) palloc(numberOfAttributes * sizeof(Oid));
 collationObjectId = (Oid *) palloc(numberOfAttributes * sizeof(Oid));
 classObjectId = (Oid *) palloc(numberOfAttributes * sizeof(Oid));
 coloptions = (int16 *) palloc(numberOfAttributes * sizeof(int16));
 ComputeIndexAttrs(indexInfo,
       typeObjectId, collationObjectId, classObjectId,
       coloptions, attributeList,
       exclusionOpNames, relationId,
       accessMethodName, accessMethodId,
       amcanorder, isconstraint);



 tuple = SearchSysCache1(INDEXRELID, ObjectIdGetDatum(oldId));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for index %u", oldId);
 indexForm = (Form_pg_index) GETSTRUCT(tuple);





 if (!(heap_attisnull(tuple, Anum_pg_index_indpred, ((void*)0)) &&
    heap_attisnull(tuple, Anum_pg_index_indexprs, ((void*)0)) &&
    indexForm->indisvalid))
 {
  ReleaseSysCache(tuple);
  return 0;
 }


 old_natts = indexForm->indnkeyatts;
 Assert(old_natts == numberOfAttributes);

 d = SysCacheGetAttr(INDEXRELID, tuple, Anum_pg_index_indcollation, &isnull);
 Assert(!isnull);
 old_indcollation = (oidvector *) DatumGetPointer(d);

 d = SysCacheGetAttr(INDEXRELID, tuple, Anum_pg_index_indclass, &isnull);
 Assert(!isnull);
 old_indclass = (oidvector *) DatumGetPointer(d);

 ret = (memcmp(old_indclass->values, classObjectId,
      old_natts * sizeof(Oid)) == 0 &&
     memcmp(old_indcollation->values, collationObjectId,
      old_natts * sizeof(Oid)) == 0);

 ReleaseSysCache(tuple);

 if (!ret)
  return 0;


 irel = index_open(oldId, AccessShareLock);
 for (i = 0; i < old_natts; i++)
 {
  if (IsPolymorphicType(get_opclass_input_type(classObjectId[i])) &&
   TupleDescAttr(irel->rd_att, i)->atttypid != typeObjectId[i])
  {
   ret = 0;
   break;
  }
 }


 if (ret && indexInfo->ii_ExclusionOps != ((void*)0))
 {
  Oid *old_operators,
       *old_procs;
  uint16 *old_strats;

  RelationGetExclusionInfo(irel, &old_operators, &old_procs, &old_strats);
  ret = memcmp(old_operators, indexInfo->ii_ExclusionOps,
      old_natts * sizeof(Oid)) == 0;


  if (ret)
  {
   for (i = 0; i < old_natts && ret; i++)
   {
    Oid left,
       right;

    op_input_types(indexInfo->ii_ExclusionOps[i], &left, &right);
    if ((IsPolymorphicType(left) || IsPolymorphicType(right)) &&
     TupleDescAttr(irel->rd_att, i)->atttypid != typeObjectId[i])
    {
     ret = 0;
     break;
    }
   }
  }
 }

 index_close(irel, NoLock);
 return ret;
}
