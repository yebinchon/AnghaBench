
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_25__ ;
typedef struct TYPE_35__ TYPE_1__ ;


struct TYPE_41__ {int anynullkeys; int nextkey; int pivotsearch; int keysz; int * scantid; int heapkeyspace; TYPE_1__* scankeys; } ;
struct TYPE_36__ {size_t itemIndex; TYPE_5__* items; int buf; } ;
struct TYPE_40__ {int numberOfKeys; scalar_t__ currTuples; TYPE_25__ currPos; TYPE_1__* keyData; int qual_ok; } ;
struct TYPE_39__ {scalar_t__ tupleOffset; int heapTid; } ;
struct TYPE_38__ {scalar_t__ xs_itup; scalar_t__ xs_want_itup; int xs_heaptid; int xs_snapshot; int * parallel_scan; int opaque; TYPE_3__* indexRelation; } ;
struct TYPE_37__ {scalar_t__* rd_opcintype; int * rd_opfamily; } ;
struct TYPE_35__ {int sk_attno; int sk_flags; int sk_strategy; scalar_t__ sk_subtype; scalar_t__ sk_collation; int sk_argument; } ;
typedef int StrategyNumber ;
typedef TYPE_1__ ScanKeyData ;
typedef TYPE_1__* ScanKey ;
typedef int ScanDirection ;
typedef TYPE_3__* Relation ;
typedef scalar_t__ RegProcedure ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_4__* IndexScanDesc ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef int BTStack ;
typedef TYPE_5__ BTScanPosItem ;
typedef TYPE_6__* BTScanOpaque ;
typedef TYPE_7__ BTScanInsertData ;
typedef int AttrNumber ;


 int Assert (int) ;





 int BTORDER_PROC ;
 int BTScanPosInvalidate (TYPE_25__) ;
 int BTScanPosIsValid (TYPE_25__) ;
 int BT_READ ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetBlockNumber (int ) ;
 int BufferIsValid (int ) ;
 int DatumGetPointer (int ) ;
 int ERROR ;
 int INDEX_MAX_KEYS ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidOid ;
 int InvalidStrategy ;
 int LockBuffer (int ,int ) ;
 int OffsetNumberPrev (int ) ;
 scalar_t__ P_NONE ;
 int PredicateLockPage (TYPE_3__*,int ,int ) ;
 int PredicateLockRelation (TYPE_3__*,int ) ;
 int RegProcedureIsValid (scalar_t__) ;
 int RelationGetRelationName (TYPE_3__*) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int SK_ISNULL ;
 int SK_ROW_END ;
 int SK_ROW_HEADER ;
 int SK_ROW_MEMBER ;
 int SK_SEARCHNOTNULL ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int ScanKeyEntryInitialize (TYPE_1__*,int,int,int,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int ScanKeyEntryInitializeWithInfo (TYPE_1__*,int,int,int,scalar_t__,scalar_t__,int *,int ) ;
 int _bt_binsrch (TYPE_3__*,TYPE_7__*,int ) ;
 int _bt_drop_lock_and_maybe_pin (TYPE_4__*,TYPE_25__*) ;
 int _bt_endpoint (TYPE_4__*,int ) ;
 int _bt_freestack (int ) ;
 int _bt_heapkeyspace (TYPE_3__*) ;
 int _bt_initialize_more_data (TYPE_6__*,int ) ;
 int _bt_parallel_done (TYPE_4__*) ;
 int _bt_parallel_readpage (TYPE_4__*,scalar_t__,int ) ;
 int _bt_parallel_seize (TYPE_4__*,scalar_t__*) ;
 int _bt_preprocess_keys (TYPE_4__*) ;
 int _bt_readpage (TYPE_4__*,int ,int ) ;
 int _bt_search (TYPE_3__*,TYPE_7__*,int *,int ,int ) ;
 int _bt_steppage (TYPE_4__*,int ) ;
 int elog (int ,char*,int,...) ;
 scalar_t__ get_opfamily_proc (int ,scalar_t__,scalar_t__,int ) ;
 int * index_getprocinfo (TYPE_3__*,int,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int pgstat_count_index_scan (TYPE_3__*) ;

bool
_bt_first(IndexScanDesc scan, ScanDirection dir)
{
 Relation rel = scan->indexRelation;
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 Buffer buf;
 BTStack stack;
 OffsetNumber offnum;
 StrategyNumber strat;
 bool nextkey;
 bool goback;
 BTScanInsertData inskey;
 ScanKey startKeys[INDEX_MAX_KEYS];
 ScanKeyData notnullkeys[INDEX_MAX_KEYS];
 int keysCount = 0;
 int i;
 bool status = 1;
 StrategyNumber strat_total;
 BTScanPosItem *currItem;
 BlockNumber blkno;

 Assert(!BTScanPosIsValid(so->currPos));

 pgstat_count_index_scan(rel);





 _bt_preprocess_keys(scan);





 if (!so->qual_ok)
  return 0;







 if (scan->parallel_scan != ((void*)0))
 {
  status = _bt_parallel_seize(scan, &blkno);
  if (!status)
   return 0;
  else if (blkno == P_NONE)
  {
   _bt_parallel_done(scan);
   return 0;
  }
  else if (blkno != InvalidBlockNumber)
  {
   if (!_bt_parallel_readpage(scan, blkno, dir))
    return 0;
   goto readcomplete;
  }
 }
 strat_total = 132;
 if (so->numberOfKeys > 0)
 {
  AttrNumber curattr;
  ScanKey chosen;
  ScanKey impliesNN;
  ScanKey cur;






  curattr = 1;
  chosen = ((void*)0);

  impliesNN = ((void*)0);






  for (cur = so->keyData, i = 0;; cur++, i++)
  {
   if (i >= so->numberOfKeys || cur->sk_attno != curattr)
   {




    if (chosen == ((void*)0) && impliesNN != ((void*)0) &&
     ((impliesNN->sk_flags & SK_BT_NULLS_FIRST) ?
      ScanDirectionIsForward(dir) :
      ScanDirectionIsBackward(dir)))
    {

     chosen = &notnullkeys[keysCount];
     ScanKeyEntryInitialize(chosen,
             (SK_SEARCHNOTNULL | SK_ISNULL |
           (impliesNN->sk_flags &
            (SK_BT_DESC | SK_BT_NULLS_FIRST))),
             curattr,
             ((impliesNN->sk_flags & SK_BT_NULLS_FIRST) ?
           130 :
           128),
             InvalidOid,
             InvalidOid,
             InvalidOid,
             (Datum) 0);
    }





    if (chosen == ((void*)0))
     break;
    startKeys[keysCount++] = chosen;





    strat = chosen->sk_strategy;
    if (strat != 132)
    {
     strat_total = strat;
     if (strat == 130 ||
      strat == 128)
      break;
    }






    if (i >= so->numberOfKeys ||
     cur->sk_attno != curattr + 1)
     break;




    curattr = cur->sk_attno;
    chosen = ((void*)0);
    impliesNN = ((void*)0);
   }
   switch (cur->sk_strategy)
   {
    case 128:
    case 129:
     if (chosen == ((void*)0))
     {
      if (ScanDirectionIsBackward(dir))
       chosen = cur;
      else
       impliesNN = cur;
     }
     break;
    case 132:

     chosen = cur;
     break;
    case 131:
    case 130:
     if (chosen == ((void*)0))
     {
      if (ScanDirectionIsForward(dir))
       chosen = cur;
      else
       impliesNN = cur;
     }
     break;
   }
  }
 }






 if (keysCount == 0)
 {
  bool match;

  match = _bt_endpoint(scan, dir);

  if (!match)
  {

   _bt_parallel_done(scan);
  }

  return match;
 }
 Assert(keysCount <= INDEX_MAX_KEYS);
 for (i = 0; i < keysCount; i++)
 {
  ScanKey cur = startKeys[i];

  Assert(cur->sk_attno == i + 1);

  if (cur->sk_flags & SK_ROW_HEADER)
  {
   ScanKey subkey = (ScanKey) DatumGetPointer(cur->sk_argument);

   Assert(subkey->sk_flags & SK_ROW_MEMBER);
   if (subkey->sk_flags & SK_ISNULL)
   {
    _bt_parallel_done(scan);
    return 0;
   }
   memcpy(inskey.scankeys + i, subkey, sizeof(ScanKeyData));
   if (i == keysCount - 1)
   {
    bool used_all_subkeys = 0;

    Assert(!(subkey->sk_flags & SK_ROW_END));
    for (;;)
    {
     subkey++;
     Assert(subkey->sk_flags & SK_ROW_MEMBER);
     if (subkey->sk_attno != keysCount + 1)
      break;
     if (subkey->sk_strategy != cur->sk_strategy)
      break;
     if (subkey->sk_flags & SK_ISNULL)
      break;
     Assert(keysCount < INDEX_MAX_KEYS);
     memcpy(inskey.scankeys + keysCount, subkey,
         sizeof(ScanKeyData));
     keysCount++;
     if (subkey->sk_flags & SK_ROW_END)
     {
      used_all_subkeys = 1;
      break;
     }
    }
    if (!used_all_subkeys)
    {
     switch (strat_total)
     {
      case 128:
       strat_total = 129;
       break;
      case 130:
       strat_total = 131;
       break;
     }
    }
    break;
   }
  }
  else
  {
   if (cur->sk_subtype == rel->rd_opcintype[i] ||
    cur->sk_subtype == InvalidOid)
   {
    FmgrInfo *procinfo;

    procinfo = index_getprocinfo(rel, cur->sk_attno, BTORDER_PROC);
    ScanKeyEntryInitializeWithInfo(inskey.scankeys + i,
              cur->sk_flags,
              cur->sk_attno,
              InvalidStrategy,
              cur->sk_subtype,
              cur->sk_collation,
              procinfo,
              cur->sk_argument);
   }
   else
   {
    RegProcedure cmp_proc;

    cmp_proc = get_opfamily_proc(rel->rd_opfamily[i],
            rel->rd_opcintype[i],
            cur->sk_subtype,
            BTORDER_PROC);
    if (!RegProcedureIsValid(cmp_proc))
     elog(ERROR, "missing support function %d(%u,%u) for attribute %d of index \"%s\"",
       BTORDER_PROC, rel->rd_opcintype[i], cur->sk_subtype,
       cur->sk_attno, RelationGetRelationName(rel));
    ScanKeyEntryInitialize(inskey.scankeys + i,
            cur->sk_flags,
            cur->sk_attno,
            InvalidStrategy,
            cur->sk_subtype,
            cur->sk_collation,
            cmp_proc,
            cur->sk_argument);
   }
  }
 }
 switch (strat_total)
 {
  case 128:







   nextkey = 0;
   goback = 1;
   break;

  case 129:







   nextkey = 1;
   goback = 1;
   break;

  case 132:





   if (ScanDirectionIsBackward(dir))
   {




    nextkey = 1;
    goback = 1;
   }
   else
   {




    nextkey = 0;
    goback = 0;
   }
   break;

  case 131:





   nextkey = 0;
   goback = 0;
   break;

  case 130:





   nextkey = 1;
   goback = 0;
   break;

  default:

   elog(ERROR, "unrecognized strat_total: %d", (int) strat_total);
   return 0;
 }


 inskey.heapkeyspace = _bt_heapkeyspace(rel);
 inskey.anynullkeys = 0;
 inskey.nextkey = nextkey;
 inskey.pivotsearch = 0;
 inskey.scantid = ((void*)0);
 inskey.keysz = keysCount;





 stack = _bt_search(rel, &inskey, &buf, BT_READ, scan->xs_snapshot);


 _bt_freestack(stack);

 if (!BufferIsValid(buf))
 {




  PredicateLockRelation(rel, scan->xs_snapshot);





  _bt_parallel_done(scan);
  BTScanPosInvalidate(so->currPos);

  return 0;
 }
 else
  PredicateLockPage(rel, BufferGetBlockNumber(buf),
        scan->xs_snapshot);

 _bt_initialize_more_data(so, dir);


 offnum = _bt_binsrch(rel, &inskey, buf);
 if (goback)
  offnum = OffsetNumberPrev(offnum);


 Assert(!BTScanPosIsValid(so->currPos));
 so->currPos.buf = buf;




 if (!_bt_readpage(scan, dir, offnum))
 {




  LockBuffer(so->currPos.buf, BUFFER_LOCK_UNLOCK);
  if (!_bt_steppage(scan, dir))
   return 0;
 }
 else
 {

  _bt_drop_lock_and_maybe_pin(scan, &so->currPos);
 }

readcomplete:

 currItem = &so->currPos.items[so->currPos.itemIndex];
 scan->xs_heaptid = currItem->heapTid;
 if (scan->xs_want_itup)
  scan->xs_itup = (IndexTuple) (so->currTuples + currItem->tupleOffset);

 return 1;
}
