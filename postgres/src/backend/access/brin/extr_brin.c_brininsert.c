
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_27__ {TYPE_4__* bt_columns; } ;
struct TYPE_26__ {TYPE_1__* bd_tupdesc; } ;
struct TYPE_25__ {void* ii_AmCache; int * ii_Context; } ;
struct TYPE_24__ {int * rd_indcollation; } ;
struct TYPE_23__ {int natts; } ;
typedef int Size ;
typedef TYPE_2__* Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int * MemoryContext ;
typedef int ItemPointer ;
typedef int ItemId ;
typedef int IndexUniqueCheck ;
typedef TYPE_3__ IndexInfo ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int Buffer ;
typedef TYPE_4__ BrinValues ;
typedef int BrinTuple ;
typedef int BrinRevmap ;
typedef TYPE_5__ BrinMemTuple ;
typedef TYPE_4__ BrinDesc ;
typedef int BlockNumber ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AVW_BRINSummarizeRange ;
 int * AllocSetContextCreate (int *,char*,int ) ;
 int AutoVacuumRequestWork (int ,int ,int) ;
 int BRIN_PROCNUM_ADDVALUE ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BrinGetAutoSummarize (TYPE_2__*) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CHECK_FOR_INTERRUPTS () ;
 int * CurrentMemoryContext ;
 int DatumGetBool (int ) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 scalar_t__ FirstOffsetNumber ;
 int FunctionCall4Coll (int *,int ,int ,int ,int ,int) ;
 int InvalidBuffer ;
 int ItemIdGetLength (int ) ;
 int ItemPointerGetBlockNumber (int ) ;
 scalar_t__ ItemPointerGetOffsetNumber (int ) ;
 int LOG ;
 int LockBuffer (int ,int ) ;
 int MemoryContextDelete (int *) ;
 int MemoryContextResetAndDeleteChildren (int *) ;
 int MemoryContextSwitchTo (int *) ;
 int PageGetItemId (int ,int ) ;
 int PointerGetDatum (TYPE_4__*) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationGetRelid (TYPE_2__*) ;
 int ReleaseBuffer (int ) ;
 int * brinGetTupleForHeapBlock (int *,int,int *,int *,int *,int ,int *) ;
 int * brinRevmapInitialize (TYPE_2__*,int*,int *) ;
 int brinRevmapTerminate (int *) ;
 TYPE_4__* brin_build_desc (TYPE_2__*) ;
 int brin_can_do_samepage_update (int ,int ,int ) ;
 int * brin_copy_tuple (int *,int ,int *,int *) ;
 TYPE_5__* brin_deform_tuple (TYPE_4__*,int *,int *) ;
 int brin_doupdate (TYPE_2__*,int,int *,int,int ,int ,int *,int ,int *,int ,int) ;
 int * brin_form_tuple (TYPE_4__*,int,TYPE_5__*,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int) ;
 int * index_getprocinfo (TYPE_2__*,int,int ) ;

bool
brininsert(Relation idxRel, Datum *values, bool *nulls,
     ItemPointer heaptid, Relation heapRel,
     IndexUniqueCheck checkUnique,
     IndexInfo *indexInfo)
{
 BlockNumber pagesPerRange;
 BlockNumber origHeapBlk;
 BlockNumber heapBlk;
 BrinDesc *bdesc = (BrinDesc *) indexInfo->ii_AmCache;
 BrinRevmap *revmap;
 Buffer buf = InvalidBuffer;
 MemoryContext tupcxt = ((void*)0);
 MemoryContext oldcxt = CurrentMemoryContext;
 bool autosummarize = BrinGetAutoSummarize(idxRel);

 revmap = brinRevmapInitialize(idxRel, &pagesPerRange, ((void*)0));





 origHeapBlk = ItemPointerGetBlockNumber(heaptid);
 heapBlk = (origHeapBlk / pagesPerRange) * pagesPerRange;

 for (;;)
 {
  bool need_insert = 0;
  OffsetNumber off;
  BrinTuple *brtup;
  BrinMemTuple *dtup;
  int keyno;

  CHECK_FOR_INTERRUPTS();






  if (autosummarize &&
   heapBlk > 0 &&
   heapBlk == origHeapBlk &&
   ItemPointerGetOffsetNumber(heaptid) == FirstOffsetNumber)
  {
   BlockNumber lastPageRange = heapBlk - 1;
   BrinTuple *lastPageTuple;

   lastPageTuple =
    brinGetTupleForHeapBlock(revmap, lastPageRange, &buf, &off,
           ((void*)0), BUFFER_LOCK_SHARE, ((void*)0));
   if (!lastPageTuple)
   {
    bool recorded;

    recorded = AutoVacuumRequestWork(AVW_BRINSummarizeRange,
             RelationGetRelid(idxRel),
             lastPageRange);
    if (!recorded)
     ereport(LOG,
       (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
        errmsg("request for BRIN range summarization for index \"%s\" page %u was not recorded",
         RelationGetRelationName(idxRel),
         lastPageRange)));
   }
   else
    LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  }

  brtup = brinGetTupleForHeapBlock(revmap, heapBlk, &buf, &off,
           ((void*)0), BUFFER_LOCK_SHARE, ((void*)0));


  if (!brtup)
   break;


  if (bdesc == ((void*)0))
  {
   MemoryContextSwitchTo(indexInfo->ii_Context);
   bdesc = brin_build_desc(idxRel);
   indexInfo->ii_AmCache = (void *) bdesc;
   MemoryContextSwitchTo(oldcxt);
  }

  if (tupcxt == ((void*)0))
  {
   tupcxt = AllocSetContextCreate(CurrentMemoryContext,
             "brininsert cxt",
             ALLOCSET_DEFAULT_SIZES);
   MemoryContextSwitchTo(tupcxt);
  }

  dtup = brin_deform_tuple(bdesc, brtup, ((void*)0));
  for (keyno = 0; keyno < bdesc->bd_tupdesc->natts; keyno++)
  {
   Datum result;
   BrinValues *bval;
   FmgrInfo *addValue;

   bval = &dtup->bt_columns[keyno];
   addValue = index_getprocinfo(idxRel, keyno + 1,
           BRIN_PROCNUM_ADDVALUE);
   result = FunctionCall4Coll(addValue,
            idxRel->rd_indcollation[keyno],
            PointerGetDatum(bdesc),
            PointerGetDatum(bval),
            values[keyno],
            nulls[keyno]);

   need_insert |= DatumGetBool(result);
  }

  if (!need_insert)
  {




   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  }
  else
  {
   Page page = BufferGetPage(buf);
   ItemId lp = PageGetItemId(page, off);
   Size origsz;
   BrinTuple *origtup;
   Size newsz;
   BrinTuple *newtup;
   bool samepage;





   origsz = ItemIdGetLength(lp);
   origtup = brin_copy_tuple(brtup, origsz, ((void*)0), ((void*)0));







   newtup = brin_form_tuple(bdesc, heapBlk, dtup, &newsz);
   samepage = brin_can_do_samepage_update(buf, origsz, newsz);
   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
   if (!brin_doupdate(idxRel, pagesPerRange, revmap, heapBlk,
          buf, off, origtup, origsz, newtup, newsz,
          samepage))
   {

    MemoryContextResetAndDeleteChildren(tupcxt);
    continue;
   }
  }


  break;
 }

 brinRevmapTerminate(revmap);
 if (BufferIsValid(buf))
  ReleaseBuffer(buf);
 MemoryContextSwitchTo(oldcxt);
 if (tupcxt != ((void*)0))
  MemoryContextDelete(tupcxt);

 return 0;
}
