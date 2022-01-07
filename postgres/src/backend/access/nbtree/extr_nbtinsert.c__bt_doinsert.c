
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int TransactionId ;
struct TYPE_17__ {scalar_t__ itemsz; int bounds_valid; void* buf; TYPE_2__* itup_key; TYPE_1__* itup; } ;
struct TYPE_16__ {int * scantid; scalar_t__ heapkeyspace; int anynullkeys; } ;
struct TYPE_15__ {int t_tid; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexUniqueCheck ;
typedef TYPE_1__* IndexTuple ;
typedef void* Buffer ;
typedef int * BTStack ;
typedef TYPE_2__* BTScanInsert ;
typedef scalar_t__ BTPageOpaque ;
typedef TYPE_3__ BTInsertStateData ;


 int Assert (int) ;
 int BT_WRITE ;
 int BufferGetPage (void*) ;
 int CheckForSerializableConflictIn (int ,int *,void*) ;
 scalar_t__ ConditionalLockBuffer (void*) ;
 int IndexTupleSize (TYPE_1__*) ;
 scalar_t__ InvalidBlockNumber ;
 void* InvalidBuffer ;
 scalar_t__ MAXALIGN (int ) ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 int P_IGNORE (scalar_t__) ;
 int P_INCOMPLETE_SPLIT (scalar_t__) ;
 scalar_t__ P_ISLEAF (scalar_t__) ;
 scalar_t__ P_RIGHTMOST (scalar_t__) ;
 scalar_t__ PageGetFreeSpace (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 void* ReadBuffer (int ,scalar_t__) ;
 scalar_t__ RelationGetTargetBlock (int ) ;
 int RelationSetTargetBlock (int ,scalar_t__) ;
 int ReleaseBuffer (void*) ;
 int SpeculativeInsertionWait (int ,scalar_t__) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int UNIQUE_CHECK_EXISTING ;
 int UNIQUE_CHECK_NO ;
 int XLTW_InsertIndex ;
 int XactLockTableWait (int ,int ,int *,int ) ;
 int _bt_check_unique (int ,TYPE_3__*,int ,int ,int*,scalar_t__*) ;
 int _bt_checkpage (int ,void*) ;
 scalar_t__ _bt_compare (int ,TYPE_2__*,int ,scalar_t__) ;
 int _bt_findinsertloc (int ,TYPE_3__*,int,int *,int ) ;
 int _bt_freestack (int *) ;
 int _bt_insertonpg (int ,TYPE_2__*,void*,void*,int *,TYPE_1__*,int ,int) ;
 TYPE_2__* _bt_mkscankey (int ,TYPE_1__*) ;
 int _bt_relbuf (int ,void*) ;
 int * _bt_search (int ,TYPE_2__*,void**,int ,int *) ;
 int pfree (TYPE_2__*) ;

bool
_bt_doinsert(Relation rel, IndexTuple itup,
    IndexUniqueCheck checkUnique, Relation heapRel)
{
 bool is_unique = 0;
 BTInsertStateData insertstate;
 BTScanInsert itup_key;
 BTStack stack = ((void*)0);
 Buffer buf;
 bool fastpath;
 bool checkingunique = (checkUnique != UNIQUE_CHECK_NO);


 itup_key = _bt_mkscankey(rel, itup);

 if (checkingunique)
 {
  if (!itup_key->anynullkeys)
  {

   itup_key->scantid = ((void*)0);
  }
  else
  {
   checkingunique = 0;

   Assert(checkUnique != UNIQUE_CHECK_EXISTING);
   is_unique = 1;
  }
 }





 insertstate.itup = itup;

 insertstate.itemsz = MAXALIGN(IndexTupleSize(itup));
 insertstate.itup_key = itup_key;
 insertstate.bounds_valid = 0;
 insertstate.buf = InvalidBuffer;
top:
 fastpath = 0;
 if (RelationGetTargetBlock(rel) != InvalidBlockNumber)
 {
  Page page;
  BTPageOpaque lpageop;







  buf = ReadBuffer(rel, RelationGetTargetBlock(rel));

  if (ConditionalLockBuffer(buf))
  {
   _bt_checkpage(rel, buf);

   page = BufferGetPage(buf);

   lpageop = (BTPageOpaque) PageGetSpecialPointer(page);






   if (P_ISLEAF(lpageop) && P_RIGHTMOST(lpageop) &&
    !P_IGNORE(lpageop) &&
    (PageGetFreeSpace(page) > insertstate.itemsz) &&
    PageGetMaxOffsetNumber(page) >= P_FIRSTDATAKEY(lpageop) &&
    _bt_compare(rel, itup_key, page, P_FIRSTDATAKEY(lpageop)) > 0)
   {




    Assert(!P_INCOMPLETE_SPLIT(lpageop));
    fastpath = 1;
   }
   else
   {
    _bt_relbuf(rel, buf);






    RelationSetTargetBlock(rel, InvalidBlockNumber);
   }
  }
  else
  {
   ReleaseBuffer(buf);





   RelationSetTargetBlock(rel, InvalidBlockNumber);
  }
 }

 if (!fastpath)
 {




  stack = _bt_search(rel, itup_key, &buf, BT_WRITE, ((void*)0));
 }

 insertstate.buf = buf;
 buf = InvalidBuffer;
 if (checkingunique)
 {
  TransactionId xwait;
  uint32 speculativeToken;

  xwait = _bt_check_unique(rel, &insertstate, heapRel, checkUnique,
         &is_unique, &speculativeToken);

  if (TransactionIdIsValid(xwait))
  {

   _bt_relbuf(rel, insertstate.buf);
   insertstate.buf = InvalidBuffer;






   if (speculativeToken)
    SpeculativeInsertionWait(xwait, speculativeToken);
   else
    XactLockTableWait(xwait, rel, &itup->t_tid, XLTW_InsertIndex);


   if (stack)
    _bt_freestack(stack);
   goto top;
  }


  if (itup_key->heapkeyspace)
   itup_key->scantid = &itup->t_tid;
 }

 if (checkUnique != UNIQUE_CHECK_EXISTING)
 {
  OffsetNumber newitemoff;
  CheckForSerializableConflictIn(rel, ((void*)0), insertstate.buf);






  newitemoff = _bt_findinsertloc(rel, &insertstate, checkingunique,
            stack, heapRel);
  _bt_insertonpg(rel, itup_key, insertstate.buf, InvalidBuffer, stack,
        itup, newitemoff, 0);
 }
 else
 {

  _bt_relbuf(rel, insertstate.buf);
 }


 if (stack)
  _bt_freestack(stack);
 pfree(itup_key);

 return is_unique;
}
