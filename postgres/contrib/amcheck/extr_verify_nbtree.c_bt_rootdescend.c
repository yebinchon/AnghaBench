
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int bounds_valid; int buf; TYPE_2__* itup_key; int itemsz; int itup; } ;
struct TYPE_11__ {int * scantid; scalar_t__ heapkeyspace; } ;
struct TYPE_10__ {int rel; scalar_t__ rootdescend; scalar_t__ readonly; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int IndexTuple ;
typedef int Buffer ;
typedef TYPE_1__ BtreeCheckState ;
typedef int BTStack ;
typedef TYPE_2__* BTScanInsert ;
typedef TYPE_3__ BTInsertStateData ;


 int Assert (int) ;
 int BT_READ ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int IndexTupleSize (int ) ;
 int MAXALIGN (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ _bt_binsrch_insert (int ,TYPE_3__*) ;
 scalar_t__ _bt_compare (int ,TYPE_2__*,int ,scalar_t__) ;
 int _bt_freestack (int ) ;
 TYPE_2__* _bt_mkscankey (int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int _bt_search (int ,TYPE_2__*,int *,int ,int *) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static bool
bt_rootdescend(BtreeCheckState *state, IndexTuple itup)
{
 BTScanInsert key;
 BTStack stack;
 Buffer lbuf;
 bool exists;

 key = _bt_mkscankey(state->rel, itup);
 Assert(key->heapkeyspace && key->scantid != ((void*)0));
 Assert(state->readonly && state->rootdescend);
 exists = 0;
 stack = _bt_search(state->rel, key, &lbuf, BT_READ, ((void*)0));

 if (BufferIsValid(lbuf))
 {
  BTInsertStateData insertstate;
  OffsetNumber offnum;
  Page page;

  insertstate.itup = itup;
  insertstate.itemsz = MAXALIGN(IndexTupleSize(itup));
  insertstate.itup_key = key;
  insertstate.bounds_valid = 0;
  insertstate.buf = lbuf;


  offnum = _bt_binsrch_insert(state->rel, &insertstate);

  page = BufferGetPage(lbuf);
  if (offnum <= PageGetMaxOffsetNumber(page) &&
   _bt_compare(state->rel, key, page, offnum) == 0)
   exists = 1;
  _bt_relbuf(state->rel, lbuf);
 }

 _bt_freestack(stack);
 pfree(key);

 return exists;
}
