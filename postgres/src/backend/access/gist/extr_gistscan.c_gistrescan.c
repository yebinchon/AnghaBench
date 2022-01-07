
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_12__ ;


struct TYPE_25__ {int fn_oid; } ;
struct TYPE_24__ {scalar_t__ queueCxt; int firstCall; int qual_ok; TYPE_1__* giststate; int * orderByTypes; int * queue; void* pageDataCxt; } ;
struct TYPE_23__ {int numberOfKeys; int numberOfOrderBys; int * xs_hitup; TYPE_15__* indexRelation; TYPE_2__* orderByData; TYPE_2__* keyData; int xs_hitupdesc; scalar_t__ xs_want_itup; int opaque; } ;
struct TYPE_18__ {void* fn_extra; int fn_oid; } ;
struct TYPE_22__ {int sk_attno; int sk_flags; TYPE_12__ sk_func; } ;
struct TYPE_21__ {scalar_t__ scanCxt; TYPE_5__* distanceFn; TYPE_5__* consistentFn; int fetchTupdesc; int leafTupdesc; } ;
struct TYPE_20__ {int * rd_opcintype; } ;
struct TYPE_19__ {int atttypid; } ;
typedef int ScanKeyData ;
typedef TYPE_2__* ScanKey ;
typedef int Oid ;
typedef scalar_t__ MemoryContext ;
typedef TYPE_3__* IndexScanDesc ;
typedef TYPE_4__* GISTScanOpaque ;
typedef TYPE_5__ FmgrInfo ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (scalar_t__,char*,int ) ;
 int Assert (int) ;
 int CreateTemplateTupleDesc (int) ;
 int ERROR ;
 int GIST_DISTANCE_PROC ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_15__*) ;
 int MemoryContextReset (scalar_t__) ;
 scalar_t__ MemoryContextSwitchTo (scalar_t__) ;
 int OidIsValid (int ) ;
 int RelationGetNumberOfAttributes (TYPE_15__*) ;
 int RelationGetRelationName (TYPE_15__*) ;
 int SK_ISNULL ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;
 TYPE_14__* TupleDescAttr (int ,int) ;
 int TupleDescInitEntry (int ,int,int *,int ,int,int ) ;
 int elog (int ,char*,int ,int,int ) ;
 int fmgr_info_copy (TYPE_12__*,TYPE_5__*,scalar_t__) ;
 int get_func_rettype (int ) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 int pairingheap_GISTSearchItem_cmp ;
 int * pairingheap_allocate (int ,TYPE_3__*) ;
 scalar_t__ palloc (int) ;
 int pfree (void**) ;

void
gistrescan(IndexScanDesc scan, ScanKey key, int nkeys,
     ScanKey orderbys, int norderbys)
{

 GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
 bool first_time;
 int i;
 MemoryContext oldCxt;
 if (so->queue == ((void*)0))
 {

  Assert(so->queueCxt == so->giststate->scanCxt);
  first_time = 1;
 }
 else if (so->queueCxt == so->giststate->scanCxt)
 {

  so->queueCxt = AllocSetContextCreate(so->giststate->scanCxt,
            "GiST queue context",
            ALLOCSET_DEFAULT_SIZES);
  first_time = 0;
 }
 else
 {

  MemoryContextReset(so->queueCxt);
  first_time = 0;
 }






 if (scan->xs_want_itup && !scan->xs_hitupdesc)
 {
  int natts;
  int nkeyatts;
  int attno;







  natts = RelationGetNumberOfAttributes(scan->indexRelation);
  nkeyatts = IndexRelationGetNumberOfKeyAttributes(scan->indexRelation);
  so->giststate->fetchTupdesc = CreateTemplateTupleDesc(natts);
  for (attno = 1; attno <= nkeyatts; attno++)
  {
   TupleDescInitEntry(so->giststate->fetchTupdesc, attno, ((void*)0),
          scan->indexRelation->rd_opcintype[attno - 1],
          -1, 0);
  }

  for (; attno <= natts; attno++)
  {

   TupleDescInitEntry(so->giststate->fetchTupdesc, attno, ((void*)0),
          TupleDescAttr(so->giststate->leafTupdesc,
            attno - 1)->atttypid,
          -1, 0);
  }
  scan->xs_hitupdesc = so->giststate->fetchTupdesc;


  so->pageDataCxt = AllocSetContextCreate(so->giststate->scanCxt,
            "GiST page data context",
            ALLOCSET_DEFAULT_SIZES);
 }


 oldCxt = MemoryContextSwitchTo(so->queueCxt);
 so->queue = pairingheap_allocate(pairingheap_GISTSearchItem_cmp, scan);
 MemoryContextSwitchTo(oldCxt);

 so->firstCall = 1;


 if (key && scan->numberOfKeys > 0)
 {
  void **fn_extras = ((void*)0);






  if (!first_time)
  {
   fn_extras = (void **) palloc(scan->numberOfKeys * sizeof(void *));
   for (i = 0; i < scan->numberOfKeys; i++)
    fn_extras[i] = scan->keyData[i].sk_func.fn_extra;
  }

  memmove(scan->keyData, key,
    scan->numberOfKeys * sizeof(ScanKeyData));
  so->qual_ok = 1;

  for (i = 0; i < scan->numberOfKeys; i++)
  {
   ScanKey skey = scan->keyData + i;





   fmgr_info_copy(&(skey->sk_func),
         &(so->giststate->consistentFn[skey->sk_attno - 1]),
         so->giststate->scanCxt);


   if (!first_time)
    skey->sk_func.fn_extra = fn_extras[i];

   if (skey->sk_flags & SK_ISNULL)
   {
    if (!(skey->sk_flags & (SK_SEARCHNULL | SK_SEARCHNOTNULL)))
     so->qual_ok = 0;
   }
  }

  if (!first_time)
   pfree(fn_extras);
 }


 if (orderbys && scan->numberOfOrderBys > 0)
 {
  void **fn_extras = ((void*)0);


  if (!first_time)
  {
   fn_extras = (void **) palloc(scan->numberOfOrderBys * sizeof(void *));
   for (i = 0; i < scan->numberOfOrderBys; i++)
    fn_extras[i] = scan->orderByData[i].sk_func.fn_extra;
  }

  memmove(scan->orderByData, orderbys,
    scan->numberOfOrderBys * sizeof(ScanKeyData));

  so->orderByTypes = (Oid *) palloc(scan->numberOfOrderBys * sizeof(Oid));
  for (i = 0; i < scan->numberOfOrderBys; i++)
  {
   ScanKey skey = scan->orderByData + i;
   FmgrInfo *finfo = &(so->giststate->distanceFn[skey->sk_attno - 1]);


   if (!OidIsValid(finfo->fn_oid))
    elog(ERROR, "missing support function %d for attribute %d of index \"%s\"",
      GIST_DISTANCE_PROC, skey->sk_attno,
      RelationGetRelationName(scan->indexRelation));
   so->orderByTypes[i] = get_func_rettype(skey->sk_func.fn_oid);





   fmgr_info_copy(&(skey->sk_func), finfo, so->giststate->scanCxt);


   if (!first_time)
    skey->sk_func.fn_extra = fn_extras[i];
  }

  if (!first_time)
   pfree(fn_extras);
 }


 scan->xs_hitup = ((void*)0);
}
