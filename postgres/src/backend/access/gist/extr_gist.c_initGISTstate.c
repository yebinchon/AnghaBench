
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {int natts; } ;
struct TYPE_14__ {void* fn_oid; } ;
struct TYPE_13__ {void** supportCollation; TYPE_7__* fetchFn; TYPE_7__* distanceFn; TYPE_7__* equalFn; TYPE_7__* picksplitFn; TYPE_7__* penaltyFn; TYPE_7__* decompressFn; TYPE_7__* compressFn; TYPE_7__* unionFn; TYPE_7__* consistentFn; TYPE_9__* nonLeafTupdesc; TYPE_10__* leafTupdesc; void* tempCxt; void* scanCxt; } ;
struct TYPE_12__ {TYPE_10__* rd_att; void** rd_indcollation; } ;
struct TYPE_11__ {int natts; } ;
typedef TYPE_1__* Relation ;
typedef void* MemoryContext ;
typedef TYPE_2__ GISTSTATE ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int ,char*,int ) ;
 TYPE_9__* CreateTupleDescCopyConstr (TYPE_10__*) ;
 int CurrentMemoryContext ;
 void* DEFAULT_COLLATION_OID ;
 int ERROR ;
 int GIST_COMPRESS_PROC ;
 int GIST_CONSISTENT_PROC ;
 int GIST_DECOMPRESS_PROC ;
 int GIST_DISTANCE_PROC ;
 int GIST_EQUAL_PROC ;
 int GIST_FETCH_PROC ;
 int GIST_PENALTY_PROC ;
 int GIST_PICKSPLIT_PROC ;
 int GIST_UNION_PROC ;
 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_1__*) ;
 void* InvalidOid ;
 void* MemoryContextSwitchTo (void*) ;
 scalar_t__ OidIsValid (void*) ;
 int elog (int ,char*,int,int) ;
 int fmgr_info_copy (TYPE_7__*,int ,void*) ;
 void* index_getprocid (TYPE_1__*,int,int ) ;
 int index_getprocinfo (TYPE_1__*,int,int ) ;
 scalar_t__ palloc (int) ;

GISTSTATE *
initGISTstate(Relation index)
{
 GISTSTATE *giststate;
 MemoryContext scanCxt;
 MemoryContext oldCxt;
 int i;


 if (index->rd_att->natts > INDEX_MAX_KEYS)
  elog(ERROR, "numberOfAttributes %d > %d",
    index->rd_att->natts, INDEX_MAX_KEYS);


 scanCxt = AllocSetContextCreate(CurrentMemoryContext,
         "GiST scan context",
         ALLOCSET_DEFAULT_SIZES);
 oldCxt = MemoryContextSwitchTo(scanCxt);


 giststate = (GISTSTATE *) palloc(sizeof(GISTSTATE));

 giststate->scanCxt = scanCxt;
 giststate->tempCxt = scanCxt;
 giststate->leafTupdesc = index->rd_att;
 giststate->nonLeafTupdesc = CreateTupleDescCopyConstr(index->rd_att);
 giststate->nonLeafTupdesc->natts =
  IndexRelationGetNumberOfKeyAttributes(index);

 for (i = 0; i < IndexRelationGetNumberOfKeyAttributes(index); i++)
 {
  fmgr_info_copy(&(giststate->consistentFn[i]),
        index_getprocinfo(index, i + 1, GIST_CONSISTENT_PROC),
        scanCxt);
  fmgr_info_copy(&(giststate->unionFn[i]),
        index_getprocinfo(index, i + 1, GIST_UNION_PROC),
        scanCxt);


  if (OidIsValid(index_getprocid(index, i + 1, GIST_COMPRESS_PROC)))
   fmgr_info_copy(&(giststate->compressFn[i]),
         index_getprocinfo(index, i + 1, GIST_COMPRESS_PROC),
         scanCxt);
  else
   giststate->compressFn[i].fn_oid = InvalidOid;


  if (OidIsValid(index_getprocid(index, i + 1, GIST_DECOMPRESS_PROC)))
   fmgr_info_copy(&(giststate->decompressFn[i]),
         index_getprocinfo(index, i + 1, GIST_DECOMPRESS_PROC),
         scanCxt);
  else
   giststate->decompressFn[i].fn_oid = InvalidOid;

  fmgr_info_copy(&(giststate->penaltyFn[i]),
        index_getprocinfo(index, i + 1, GIST_PENALTY_PROC),
        scanCxt);
  fmgr_info_copy(&(giststate->picksplitFn[i]),
        index_getprocinfo(index, i + 1, GIST_PICKSPLIT_PROC),
        scanCxt);
  fmgr_info_copy(&(giststate->equalFn[i]),
        index_getprocinfo(index, i + 1, GIST_EQUAL_PROC),
        scanCxt);


  if (OidIsValid(index_getprocid(index, i + 1, GIST_DISTANCE_PROC)))
   fmgr_info_copy(&(giststate->distanceFn[i]),
         index_getprocinfo(index, i + 1, GIST_DISTANCE_PROC),
         scanCxt);
  else
   giststate->distanceFn[i].fn_oid = InvalidOid;


  if (OidIsValid(index_getprocid(index, i + 1, GIST_FETCH_PROC)))
   fmgr_info_copy(&(giststate->fetchFn[i]),
         index_getprocinfo(index, i + 1, GIST_FETCH_PROC),
         scanCxt);
  else
   giststate->fetchFn[i].fn_oid = InvalidOid;
  if (OidIsValid(index->rd_indcollation[i]))
   giststate->supportCollation[i] = index->rd_indcollation[i];
  else
   giststate->supportCollation[i] = DEFAULT_COLLATION_OID;
 }


 for (; i < index->rd_att->natts; i++)
 {
  giststate->consistentFn[i].fn_oid = InvalidOid;
  giststate->unionFn[i].fn_oid = InvalidOid;
  giststate->compressFn[i].fn_oid = InvalidOid;
  giststate->decompressFn[i].fn_oid = InvalidOid;
  giststate->penaltyFn[i].fn_oid = InvalidOid;
  giststate->picksplitFn[i].fn_oid = InvalidOid;
  giststate->equalFn[i].fn_oid = InvalidOid;
  giststate->distanceFn[i].fn_oid = InvalidOid;
  giststate->fetchFn[i].fn_oid = InvalidOid;
  giststate->supportCollation[i] = InvalidOid;
 }

 MemoryContextSwitchTo(oldCxt);

 return giststate;
}
