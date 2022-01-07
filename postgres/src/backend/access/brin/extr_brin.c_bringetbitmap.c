
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_19__ ;
typedef struct TYPE_22__ TYPE_18__ ;


typedef int int64 ;
struct TYPE_28__ {TYPE_1__* bt_columns; scalar_t__ bt_placeholder; } ;
struct TYPE_27__ {scalar_t__ bo_pagesPerRange; int bo_rmAccess; TYPE_1__* bo_bdesc; } ;
struct TYPE_26__ {scalar_t__ fn_oid; } ;
struct TYPE_25__ {int numberOfKeys; TYPE_1__* keyData; int xs_snapshot; scalar_t__ opaque; int indexRelation; } ;
struct TYPE_24__ {int sk_attno; int sk_flags; scalar_t__ sk_collation; TYPE_19__* bd_tupdesc; } ;
struct TYPE_23__ {int natts; } ;
struct TYPE_22__ {scalar_t__ attcollation; } ;
typedef int TIDBitmap ;
typedef int Size ;
typedef TYPE_1__* ScanKey ;
typedef int Relation ;
typedef int Oid ;
typedef int OffsetNumber ;
typedef int MemoryContext ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__ FmgrInfo ;
typedef int Datum ;
typedef scalar_t__ Buffer ;
typedef TYPE_1__ BrinValues ;
typedef int BrinTuple ;
typedef TYPE_5__ BrinOpaque ;
typedef TYPE_6__ BrinMemTuple ;
typedef TYPE_1__ BrinDesc ;
typedef scalar_t__ BlockNumber ;
typedef int AttrNumber ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AccessShareLock ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int BRIN_PROCNUM_CONSISTENT ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int CHECK_FOR_INTERRUPTS () ;
 int CurrentMemoryContext ;
 int DatumGetBool (int ) ;
 int FunctionCall3Coll (TYPE_3__*,scalar_t__,int ,int ,int ) ;
 int IndexGetRelation (int ,int) ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ InvalidOid ;
 int LockBuffer (scalar_t__,int ) ;
 int MemoryContextDelete (int ) ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (TYPE_1__*) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelid (int ) ;
 int ReleaseBuffer (scalar_t__) ;
 int SK_ISNULL ;
 TYPE_18__* TupleDescAttr (TYPE_19__*,int) ;
 int * brinGetTupleForHeapBlock (int ,scalar_t__,scalar_t__*,int *,int *,int ,int ) ;
 int * brin_copy_tuple (int *,int ,int *,int *) ;
 TYPE_6__* brin_deform_tuple (TYPE_1__*,int *,TYPE_6__*) ;
 TYPE_6__* brin_new_memtuple (TYPE_1__*) ;
 int fmgr_info_copy (TYPE_3__*,TYPE_3__*,int ) ;
 TYPE_3__* index_getprocinfo (int ,int,int ) ;
 TYPE_3__* palloc0 (int) ;
 int pgstat_count_index_scan (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int tbm_add_page (int *,scalar_t__) ;

int64
bringetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 Relation idxRel = scan->indexRelation;
 Buffer buf = InvalidBuffer;
 BrinDesc *bdesc;
 Oid heapOid;
 Relation heapRel;
 BrinOpaque *opaque;
 BlockNumber nblocks;
 BlockNumber heapBlk;
 int totalpages = 0;
 FmgrInfo *consistentFn;
 MemoryContext oldcxt;
 MemoryContext perRangeCxt;
 BrinMemTuple *dtup;
 BrinTuple *btup = ((void*)0);
 Size btupsz = 0;

 opaque = (BrinOpaque *) scan->opaque;
 bdesc = opaque->bo_bdesc;
 pgstat_count_index_scan(idxRel);





 heapOid = IndexGetRelation(RelationGetRelid(idxRel), 0);
 heapRel = table_open(heapOid, AccessShareLock);
 nblocks = RelationGetNumberOfBlocks(heapRel);
 table_close(heapRel, AccessShareLock);






 consistentFn = palloc0(sizeof(FmgrInfo) * bdesc->bd_tupdesc->natts);


 dtup = brin_new_memtuple(bdesc);





 perRangeCxt = AllocSetContextCreate(CurrentMemoryContext,
          "bringetbitmap cxt",
          ALLOCSET_DEFAULT_SIZES);
 oldcxt = MemoryContextSwitchTo(perRangeCxt);






 for (heapBlk = 0; heapBlk < nblocks; heapBlk += opaque->bo_pagesPerRange)
 {
  bool addrange;
  bool gottuple = 0;
  BrinTuple *tup;
  OffsetNumber off;
  Size size;

  CHECK_FOR_INTERRUPTS();

  MemoryContextResetAndDeleteChildren(perRangeCxt);

  tup = brinGetTupleForHeapBlock(opaque->bo_rmAccess, heapBlk, &buf,
            &off, &size, BUFFER_LOCK_SHARE,
            scan->xs_snapshot);
  if (tup)
  {
   gottuple = 1;
   btup = brin_copy_tuple(tup, size, btup, &btupsz);
   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  }





  if (!gottuple)
  {
   addrange = 1;
  }
  else
  {
   dtup = brin_deform_tuple(bdesc, btup, dtup);
   if (dtup->bt_placeholder)
   {




    addrange = 1;
   }
   else
   {
    int keyno;
    addrange = 1;
    for (keyno = 0; keyno < scan->numberOfKeys; keyno++)
    {
     ScanKey key = &scan->keyData[keyno];
     AttrNumber keyattno = key->sk_attno;
     BrinValues *bval = &dtup->bt_columns[keyattno - 1];
     Datum add;







     Assert((key->sk_flags & SK_ISNULL) ||
         (key->sk_collation ==
       TupleDescAttr(bdesc->bd_tupdesc,
            keyattno - 1)->attcollation));


     if (consistentFn[keyattno - 1].fn_oid == InvalidOid)
     {
      FmgrInfo *tmp;

      tmp = index_getprocinfo(idxRel, keyattno,
            BRIN_PROCNUM_CONSISTENT);
      fmgr_info_copy(&consistentFn[keyattno - 1], tmp,
            CurrentMemoryContext);
     }
     add = FunctionCall3Coll(&consistentFn[keyattno - 1],
           key->sk_collation,
           PointerGetDatum(bdesc),
           PointerGetDatum(bval),
           PointerGetDatum(key));
     addrange = DatumGetBool(add);
     if (!addrange)
      break;
    }
   }
  }


  if (addrange)
  {
   BlockNumber pageno;

   for (pageno = heapBlk;
     pageno <= heapBlk + opaque->bo_pagesPerRange - 1;
     pageno++)
   {
    MemoryContextSwitchTo(oldcxt);
    tbm_add_page(tbm, pageno);
    totalpages++;
    MemoryContextSwitchTo(perRangeCxt);
   }
  }
 }

 MemoryContextSwitchTo(oldcxt);
 MemoryContextDelete(perRangeCxt);

 if (buf != InvalidBuffer)
  ReleaseBuffer(buf);






 return totalpages * 10;
}
