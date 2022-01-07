
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32 ;
typedef int TransactionId ;
struct TYPE_20__ {scalar_t__ buf; int bounds_valid; scalar_t__ low; scalar_t__ stricthigh; TYPE_3__* itup_key; TYPE_2__* itup; } ;
struct TYPE_19__ {int btpo_next; int btpo_flags; } ;
struct TYPE_18__ {int * scantid; int anynullkeys; } ;
struct TYPE_17__ {int t_tid; } ;
struct TYPE_16__ {int speculativeToken; int xmax; int xmin; } ;
typedef TYPE_1__ SnapshotData ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemId ;
typedef scalar_t__ IndexUniqueCheck ;
typedef TYPE_2__* IndexTuple ;
typedef int Datum ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;
typedef TYPE_3__* BTScanInsert ;
typedef TYPE_4__* BTPageOpaque ;
typedef TYPE_5__* BTInsertState ;


 int Assert (int) ;
 int BTP_HAS_GARBAGE ;
 int BT_READ ;
 int BufferGetPage (scalar_t__) ;
 char* BuildIndexValueDescription (int ,int *,int*) ;
 int CheckForSerializableConflictIn (int ,int *,scalar_t__) ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERRCODE_UNIQUE_VIOLATION ;
 int ERROR ;
 int INDEX_MAX_KEYS ;
 int InitDirtySnapshot (TYPE_1__) ;
 scalar_t__ InvalidBuffer ;
 int InvalidTransactionId ;
 int ItemIdIsDead (int ) ;
 int ItemIdMarkDead (int ) ;
 scalar_t__ ItemPointerCompare (int *,int *) ;
 int MarkBufferDirtyHint (scalar_t__,int) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_4__*) ;
 scalar_t__ P_HIKEY ;
 int P_IGNORE (TYPE_4__*) ;
 scalar_t__ P_RIGHTMOST (TYPE_4__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetDescr (int ) ;
 int RelationGetRelationName (int ) ;
 TYPE_1__* SnapshotSelf ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ UNIQUE_CHECK_EXISTING ;
 scalar_t__ UNIQUE_CHECK_PARTIAL ;
 scalar_t__ _bt_binsrch_insert (int ,TYPE_5__*) ;
 scalar_t__ _bt_compare (int ,TYPE_3__*,int ,scalar_t__) ;
 scalar_t__ _bt_relandgetbuf (int ,scalar_t__,int ,int ) ;
 int _bt_relbuf (int ,scalar_t__) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int errtableconstraint (int ,int ) ;
 int index_deform_tuple (TYPE_2__*,int ,int *,int*) ;
 scalar_t__ table_index_fetch_tuple_check (int ,int *,TYPE_1__*,int*) ;

__attribute__((used)) static TransactionId
_bt_check_unique(Relation rel, BTInsertState insertstate, Relation heapRel,
     IndexUniqueCheck checkUnique, bool *is_unique,
     uint32 *speculativeToken)
{
 IndexTuple itup = insertstate->itup;
 BTScanInsert itup_key = insertstate->itup_key;
 SnapshotData SnapshotDirty;
 OffsetNumber offset;
 OffsetNumber maxoff;
 Page page;
 BTPageOpaque opaque;
 Buffer nbuf = InvalidBuffer;
 bool found = 0;


 *is_unique = 1;

 InitDirtySnapshot(SnapshotDirty);

 page = BufferGetPage(insertstate->buf);
 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 maxoff = PageGetMaxOffsetNumber(page);







 Assert(!insertstate->bounds_valid);
 offset = _bt_binsrch_insert(rel, insertstate);




 Assert(!insertstate->bounds_valid || insertstate->low == offset);
 Assert(!itup_key->anynullkeys);
 Assert(itup_key->scantid == ((void*)0));
 for (;;)
 {
  ItemId curitemid;
  IndexTuple curitup;
  BlockNumber nblkno;





  if (offset <= maxoff)
  {
   if (nbuf == InvalidBuffer && offset == insertstate->stricthigh)
   {
    Assert(insertstate->bounds_valid);
    Assert(insertstate->low >= P_FIRSTDATAKEY(opaque));
    Assert(insertstate->low <= insertstate->stricthigh);
    Assert(_bt_compare(rel, itup_key, page, offset) < 0);
    break;
   }

   curitemid = PageGetItemId(page, offset);
   if (!ItemIdIsDead(curitemid))
   {
    ItemPointerData htid;
    bool all_dead;

    if (_bt_compare(rel, itup_key, page, offset) != 0)
     break;


    curitup = (IndexTuple) PageGetItem(page, curitemid);
    htid = curitup->t_tid;






    if (checkUnique == UNIQUE_CHECK_EXISTING &&
     ItemPointerCompare(&htid, &itup->t_tid) == 0)
    {
     found = 1;
    }







    else if (table_index_fetch_tuple_check(heapRel, &htid,
                &SnapshotDirty,
                &all_dead))
    {
     TransactionId xwait;
     if (checkUnique == UNIQUE_CHECK_PARTIAL)
     {
      if (nbuf != InvalidBuffer)
       _bt_relbuf(rel, nbuf);
      *is_unique = 0;
      return InvalidTransactionId;
     }





     xwait = (TransactionIdIsValid(SnapshotDirty.xmin)) ?
      SnapshotDirty.xmin : SnapshotDirty.xmax;

     if (TransactionIdIsValid(xwait))
     {
      if (nbuf != InvalidBuffer)
       _bt_relbuf(rel, nbuf);

      *speculativeToken = SnapshotDirty.speculativeToken;

      insertstate->bounds_valid = 0;
      return xwait;
     }
     htid = itup->t_tid;
     if (table_index_fetch_tuple_check(heapRel, &htid,
               SnapshotSelf, ((void*)0)))
     {

     }
     else
     {




      break;
     }
     CheckForSerializableConflictIn(rel, ((void*)0), insertstate->buf);
     if (nbuf != InvalidBuffer)
      _bt_relbuf(rel, nbuf);
     _bt_relbuf(rel, insertstate->buf);
     insertstate->buf = InvalidBuffer;
     insertstate->bounds_valid = 0;

     {
      Datum values[INDEX_MAX_KEYS];
      bool isnull[INDEX_MAX_KEYS];
      char *key_desc;

      index_deform_tuple(itup, RelationGetDescr(rel),
             values, isnull);

      key_desc = BuildIndexValueDescription(rel, values,
                 isnull);

      ereport(ERROR,
        (errcode(ERRCODE_UNIQUE_VIOLATION),
         errmsg("duplicate key value violates unique constraint \"%s\"",
          RelationGetRelationName(rel)),
         key_desc ? errdetail("Key %s already exists.",
               key_desc) : 0,
         errtableconstraint(heapRel,
             RelationGetRelationName(rel))));
     }
    }
    else if (all_dead)
    {





     ItemIdMarkDead(curitemid);
     opaque->btpo_flags |= BTP_HAS_GARBAGE;





     if (nbuf != InvalidBuffer)
      MarkBufferDirtyHint(nbuf, 1);
     else
      MarkBufferDirtyHint(insertstate->buf, 1);
    }
   }
  }




  if (offset < maxoff)
   offset = OffsetNumberNext(offset);
  else
  {
   int highkeycmp;


   if (P_RIGHTMOST(opaque))
    break;
   highkeycmp = _bt_compare(rel, itup_key, page, P_HIKEY);
   Assert(highkeycmp <= 0);
   if (highkeycmp != 0)
    break;

   for (;;)
   {
    nblkno = opaque->btpo_next;
    nbuf = _bt_relandgetbuf(rel, nbuf, nblkno, BT_READ);
    page = BufferGetPage(nbuf);
    opaque = (BTPageOpaque) PageGetSpecialPointer(page);
    if (!P_IGNORE(opaque))
     break;
    if (P_RIGHTMOST(opaque))
     elog(ERROR, "fell off the end of index \"%s\"",
       RelationGetRelationName(rel));
   }
   maxoff = PageGetMaxOffsetNumber(page);
   offset = P_FIRSTDATAKEY(opaque);

  }
 }






 if (checkUnique == UNIQUE_CHECK_EXISTING && !found)
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("failed to re-find tuple within index \"%s\"",
      RelationGetRelationName(rel)),
     errhint("This may be because of a non-immutable index expression."),
     errtableconstraint(heapRel,
         RelationGetRelationName(rel))));

 if (nbuf != InvalidBuffer)
  _bt_relbuf(rel, nbuf);

 return InvalidTransactionId;
}
