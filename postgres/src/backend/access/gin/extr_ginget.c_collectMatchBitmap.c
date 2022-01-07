
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_20__ {int * supportCollation; int * comparePartialFn; int origTupdesc; } ;
struct TYPE_19__ {int attbyval; int attlen; } ;
struct TYPE_18__ {TYPE_8__* ginstate; int index; } ;
struct TYPE_17__ {int off; int buffer; } ;
struct TYPE_16__ {scalar_t__ queryCategory; int attnum; scalar_t__ searchMode; int predictNumberResult; int matchBitmap; int extra_data; int strategy; int queryKey; scalar_t__ isPartialMatch; } ;
typedef int Snapshot ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemPointer ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_1__* GinScanEntry ;
typedef scalar_t__ GinNullCategory ;
typedef TYPE_2__ GinBtreeStack ;
typedef TYPE_3__ GinBtreeData ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Datum ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 scalar_t__ DatumGetInt32 (int ) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 int FunctionCall4Coll (int *,int ,int ,int ,int ,int ) ;
 scalar_t__ GIN_CAT_NORM_KEY ;
 scalar_t__ GIN_CAT_NULL_ITEM ;
 scalar_t__ GIN_SEARCH_MODE_ALL ;
 int GIN_SHARE ;
 int GIN_UNLOCK ;
 scalar_t__ GinGetNPosting (scalar_t__) ;
 int GinGetPostingTree (scalar_t__) ;
 scalar_t__ GinIsPostingTree (scalar_t__) ;
 int GinPageIsLeaf (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 int PointerGetDatum (int ) ;
 int PredicateLockPage (int ,int ,int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 TYPE_4__* TupleDescAttr (int ,int) ;
 int UInt16GetDatum (int ) ;
 int datumCopy (int ,int ,int ) ;
 int elog (int ,char*) ;
 scalar_t__ ginCompareEntries (TYPE_8__*,int,int ,scalar_t__,int ,scalar_t__) ;
 int ginReadTuple (TYPE_8__*,int,scalar_t__,int*) ;
 int gintuple_get_attrnum (TYPE_8__*,scalar_t__) ;
 int gintuple_get_key (TYPE_8__*,scalar_t__,scalar_t__*) ;
 int moveRightIfItNeeded (TYPE_3__*,TYPE_2__*,int ) ;
 int pfree (int ) ;
 int scanPostingTree (int ,TYPE_1__*,int ,int ) ;
 int tbm_add_tuples (int ,int ,int,int) ;
 int tbm_create (long,int *) ;
 long work_mem ;

__attribute__((used)) static bool
collectMatchBitmap(GinBtreeData *btree, GinBtreeStack *stack,
       GinScanEntry scanEntry, Snapshot snapshot)
{
 OffsetNumber attnum;
 Form_pg_attribute attr;


 scanEntry->matchBitmap = tbm_create(work_mem * 1024L, ((void*)0));


 if (scanEntry->isPartialMatch &&
  scanEntry->queryCategory != GIN_CAT_NORM_KEY)
  return 1;


 attnum = scanEntry->attnum;
 attr = TupleDescAttr(btree->ginstate->origTupdesc, attnum - 1);





 PredicateLockPage(btree->index, stack->buffer, snapshot);

 for (;;)
 {
  Page page;
  IndexTuple itup;
  Datum idatum;
  GinNullCategory icategory;




  if (moveRightIfItNeeded(btree, stack, snapshot) == 0)
   return 1;

  page = BufferGetPage(stack->buffer);
  TestForOldSnapshot(snapshot, btree->index, page);
  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, stack->off));




  if (gintuple_get_attrnum(btree->ginstate, itup) != attnum)
   return 1;


  idatum = gintuple_get_key(btree->ginstate, itup, &icategory);




  if (scanEntry->isPartialMatch)
  {
   int32 cmp;





   if (icategory != GIN_CAT_NORM_KEY)
    return 1;
   cmp = DatumGetInt32(FunctionCall4Coll(&btree->ginstate->comparePartialFn[attnum - 1],
              btree->ginstate->supportCollation[attnum - 1],
              scanEntry->queryKey,
              idatum,
              UInt16GetDatum(scanEntry->strategy),
              PointerGetDatum(scanEntry->extra_data)));

   if (cmp > 0)
    return 1;
   else if (cmp < 0)
   {
    stack->off++;
    continue;
   }
  }
  else if (scanEntry->searchMode == GIN_SEARCH_MODE_ALL)
  {






   if (icategory == GIN_CAT_NULL_ITEM)
    return 1;
  }




  if (GinIsPostingTree(itup))
  {
   BlockNumber rootPostingTree = GinGetPostingTree(itup);
   if (icategory == GIN_CAT_NORM_KEY)
    idatum = datumCopy(idatum, attr->attbyval, attr->attlen);

   LockBuffer(stack->buffer, GIN_UNLOCK);






   PredicateLockPage(btree->index, rootPostingTree, snapshot);


   scanPostingTree(btree->index, scanEntry, rootPostingTree,
       snapshot);





   LockBuffer(stack->buffer, GIN_SHARE);
   page = BufferGetPage(stack->buffer);
   if (!GinPageIsLeaf(page))
   {





    return 0;
   }


   for (;;)
   {
    Datum newDatum;
    GinNullCategory newCategory;

    if (moveRightIfItNeeded(btree, stack, snapshot) == 0)
     elog(ERROR, "lost saved point in index");

    page = BufferGetPage(stack->buffer);
    itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, stack->off));

    if (gintuple_get_attrnum(btree->ginstate, itup) != attnum)
     elog(ERROR, "lost saved point in index");
    newDatum = gintuple_get_key(btree->ginstate, itup,
           &newCategory);

    if (ginCompareEntries(btree->ginstate, attnum,
           newDatum, newCategory,
           idatum, icategory) == 0)
     break;

    stack->off++;
   }

   if (icategory == GIN_CAT_NORM_KEY && !attr->attbyval)
    pfree(DatumGetPointer(idatum));
  }
  else
  {
   ItemPointer ipd;
   int nipd;

   ipd = ginReadTuple(btree->ginstate, scanEntry->attnum, itup, &nipd);
   tbm_add_tuples(scanEntry->matchBitmap, ipd, nipd, 0);
   scanEntry->predictNumberResult += GinGetNPosting(itup);
   pfree(ipd);
  }




  stack->off++;
 }
}
