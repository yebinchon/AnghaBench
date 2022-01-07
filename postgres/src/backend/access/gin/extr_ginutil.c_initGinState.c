
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;


struct TYPE_29__ {int fn_oid; } ;
struct TYPE_24__ {TYPE_9__ cmp_proc_finfo; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_28__ {int atttypmod; int atttypid; int attcollation; int attndims; } ;
struct TYPE_27__ {int oneCol; int* canPartialMatch; int * supportCollation; TYPE_12__* comparePartialFn; TYPE_12__* triConsistentFn; TYPE_12__* consistentFn; TYPE_12__* extractQueryFn; TYPE_12__* extractValueFn; TYPE_12__* compareFn; TYPE_2__** tupdesc; TYPE_2__* origTupdesc; TYPE_3__* index; } ;
struct TYPE_26__ {int * rd_indcollation; } ;
struct TYPE_25__ {int natts; } ;
struct TYPE_23__ {scalar_t__ fn_oid; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ GinState ;
typedef TYPE_5__* Form_pg_attribute ;
typedef int AttrNumber ;


 TYPE_2__* CreateTemplateTupleDesc (int) ;
 int CurrentMemoryContext ;
 int DEFAULT_COLLATION_OID ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int GIN_COMPARE_PARTIAL_PROC ;
 int GIN_COMPARE_PROC ;
 int GIN_CONSISTENT_PROC ;
 int GIN_EXTRACTQUERY_PROC ;
 int GIN_EXTRACTVALUE_PROC ;
 int GIN_TRICONSISTENT_PROC ;
 int INT2OID ;
 scalar_t__ InvalidOid ;
 int MemSet (TYPE_4__*,int ,int) ;
 scalar_t__ OidIsValid (int ) ;
 TYPE_2__* RelationGetDescr (TYPE_3__*) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int TYPECACHE_CMP_PROC_FINFO ;
 TYPE_5__* TupleDescAttr (TYPE_2__*,int) ;
 int TupleDescInitEntry (TYPE_2__*,int ,int *,int ,int,int ) ;
 int TupleDescInitEntryCollation (TYPE_2__*,int ,int ) ;
 int elog (int ,char*,int ,int ,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int fmgr_info_copy (TYPE_12__*,TYPE_9__*,int ) ;
 int format_type_be (int ) ;
 scalar_t__ index_getprocid (TYPE_3__*,int,int ) ;
 TYPE_9__* index_getprocinfo (TYPE_3__*,int,int ) ;
 TYPE_1__* lookup_type_cache (int ,int ) ;

void
initGinState(GinState *state, Relation index)
{
 TupleDesc origTupdesc = RelationGetDescr(index);
 int i;

 MemSet(state, 0, sizeof(GinState));

 state->index = index;
 state->oneCol = (origTupdesc->natts == 1) ? 1 : 0;
 state->origTupdesc = origTupdesc;

 for (i = 0; i < origTupdesc->natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(origTupdesc, i);

  if (state->oneCol)
   state->tupdesc[i] = state->origTupdesc;
  else
  {
   state->tupdesc[i] = CreateTemplateTupleDesc(2);

   TupleDescInitEntry(state->tupdesc[i], (AttrNumber) 1, ((void*)0),
          INT2OID, -1, 0);
   TupleDescInitEntry(state->tupdesc[i], (AttrNumber) 2, ((void*)0),
          attr->atttypid,
          attr->atttypmod,
          attr->attndims);
   TupleDescInitEntryCollation(state->tupdesc[i], (AttrNumber) 2,
          attr->attcollation);
  }





  if (index_getprocid(index, i + 1, GIN_COMPARE_PROC) != InvalidOid)
  {
   fmgr_info_copy(&(state->compareFn[i]),
         index_getprocinfo(index, i + 1, GIN_COMPARE_PROC),
         CurrentMemoryContext);
  }
  else
  {
   TypeCacheEntry *typentry;

   typentry = lookup_type_cache(attr->atttypid,
           TYPECACHE_CMP_PROC_FINFO);
   if (!OidIsValid(typentry->cmp_proc_finfo.fn_oid))
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_FUNCTION),
       errmsg("could not identify a comparison function for type %s",
        format_type_be(attr->atttypid))));
   fmgr_info_copy(&(state->compareFn[i]),
         &(typentry->cmp_proc_finfo),
         CurrentMemoryContext);
  }


  fmgr_info_copy(&(state->extractValueFn[i]),
        index_getprocinfo(index, i + 1, GIN_EXTRACTVALUE_PROC),
        CurrentMemoryContext);
  fmgr_info_copy(&(state->extractQueryFn[i]),
        index_getprocinfo(index, i + 1, GIN_EXTRACTQUERY_PROC),
        CurrentMemoryContext);





  if (index_getprocid(index, i + 1, GIN_TRICONSISTENT_PROC) != InvalidOid)
  {
   fmgr_info_copy(&(state->triConsistentFn[i]),
         index_getprocinfo(index, i + 1, GIN_TRICONSISTENT_PROC),
         CurrentMemoryContext);
  }

  if (index_getprocid(index, i + 1, GIN_CONSISTENT_PROC) != InvalidOid)
  {
   fmgr_info_copy(&(state->consistentFn[i]),
         index_getprocinfo(index, i + 1, GIN_CONSISTENT_PROC),
         CurrentMemoryContext);
  }

  if (state->consistentFn[i].fn_oid == InvalidOid &&
   state->triConsistentFn[i].fn_oid == InvalidOid)
  {
   elog(ERROR, "missing GIN support function (%d or %d) for attribute %d of index \"%s\"",
     GIN_CONSISTENT_PROC, GIN_TRICONSISTENT_PROC,
     i + 1, RelationGetRelationName(index));
  }




  if (index_getprocid(index, i + 1, GIN_COMPARE_PARTIAL_PROC) != InvalidOid)
  {
   fmgr_info_copy(&(state->comparePartialFn[i]),
         index_getprocinfo(index, i + 1, GIN_COMPARE_PARTIAL_PROC),
         CurrentMemoryContext);
   state->canPartialMatch[i] = 1;
  }
  else
  {
   state->canPartialMatch[i] = 0;
  }
  if (OidIsValid(index->rd_indcollation[i]))
   state->supportCollation[i] = index->rd_indcollation[i];
  else
   state->supportCollation[i] = DEFAULT_COLLATION_OID;
 }
}
