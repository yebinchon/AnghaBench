
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int newitemsz; int is_leaf; int is_rightmost; int leftspace; int rightspace; int olddataitemstotal; int maxsplits; int nsplits; int interval; TYPE_1__* splits; int rel; scalar_t__ newitemoff; int minfirstrightsz; int newitem; int page; } ;
struct TYPE_12__ {scalar_t__ firstoldonright; scalar_t__ newitemonleft; } ;
typedef TYPE_1__ SplitPoint ;
typedef int Size ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemIdData ;
typedef int ItemId ;
typedef int IndexTuple ;
typedef scalar_t__ FindSplitStrat ;
typedef TYPE_2__ FindSplitData ;
typedef int BTPageOpaqueData ;
typedef scalar_t__ BTPageOpaque ;


 int Assert (int) ;
 int BTREE_DEFAULT_FILLFACTOR ;
 double BTREE_NONLEAF_FILLFACTOR ;
 double BTREE_SINGLEVAL_FILLFACTOR ;
 int ERROR ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int ItemIdGetLength (int ) ;
 int MAXALIGN (int) ;
 int MAX_INTERNAL_INTERVAL ;
 int MAX_LEAF_INTERVAL ;
 int Max (int,double) ;
 int Min (int ,int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (scalar_t__) ;
 scalar_t__ P_HIKEY ;
 int P_ISLEAF (scalar_t__) ;
 int P_RIGHTMOST (scalar_t__) ;
 scalar_t__ PageGetExactFreeSpace (int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageGetPageSize (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int RelationGetFillFactor (int ,int ) ;
 int RelationGetRelationName (int ) ;
 int SIZE_MAX ;
 scalar_t__ SPLIT_DEFAULT ;
 scalar_t__ SPLIT_MANY_DUPLICATES ;
 scalar_t__ SPLIT_SINGLE_VALUE ;
 int SizeOfPageHeaderData ;
 scalar_t__ _bt_afternewitemoff (TYPE_2__*,scalar_t__,int,int*) ;
 scalar_t__ _bt_bestsplitloc (TYPE_2__*,int,int*,scalar_t__) ;
 int _bt_deltasortsplits (TYPE_2__*,double,int) ;
 int _bt_recsplitloc (TYPE_2__*,scalar_t__,int,int,int) ;
 int _bt_strategy (TYPE_2__*,TYPE_1__*,TYPE_1__*,scalar_t__*) ;
 int elog (int ,char*,int ) ;
 TYPE_1__* palloc (int) ;
 int pfree (TYPE_1__*) ;

OffsetNumber
_bt_findsplitloc(Relation rel,
     Page page,
     OffsetNumber newitemoff,
     Size newitemsz,
     IndexTuple newitem,
     bool *newitemonleft)
{
 BTPageOpaque opaque;
 int leftspace,
    rightspace,
    olddataitemstotal,
    olddataitemstoleft,
    perfectpenalty,
    leaffillfactor;
 FindSplitData state;
 FindSplitStrat strategy;
 ItemId itemid;
 OffsetNumber offnum,
    maxoff,
    foundfirstright;
 double fillfactormult;
 bool usemult;
 SplitPoint leftpage,
    rightpage;

 opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 maxoff = PageGetMaxOffsetNumber(page);


 leftspace = rightspace =
  PageGetPageSize(page) - SizeOfPageHeaderData -
  MAXALIGN(sizeof(BTPageOpaqueData));


 if (!P_RIGHTMOST(opaque))
 {
  itemid = PageGetItemId(page, P_HIKEY);
  rightspace -= (int) (MAXALIGN(ItemIdGetLength(itemid)) +
        sizeof(ItemIdData));
 }


 olddataitemstotal = rightspace - (int) PageGetExactFreeSpace(page);
 leaffillfactor = RelationGetFillFactor(rel, BTREE_DEFAULT_FILLFACTOR);


 newitemsz += sizeof(ItemIdData);
 state.rel = rel;
 state.page = page;
 state.newitem = newitem;
 state.newitemsz = newitemsz;
 state.is_leaf = P_ISLEAF(opaque);
 state.is_rightmost = P_RIGHTMOST(opaque);
 state.leftspace = leftspace;
 state.rightspace = rightspace;
 state.olddataitemstotal = olddataitemstotal;
 state.minfirstrightsz = SIZE_MAX;
 state.newitemoff = newitemoff;
 state.maxsplits = maxoff;
 state.splits = palloc(sizeof(SplitPoint) * state.maxsplits);
 state.nsplits = 0;





 olddataitemstoleft = 0;

 for (offnum = P_FIRSTDATAKEY(opaque);
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  Size itemsz;

  itemid = PageGetItemId(page, offnum);
  itemsz = MAXALIGN(ItemIdGetLength(itemid)) + sizeof(ItemIdData);
  if (offnum < newitemoff)
   _bt_recsplitloc(&state, offnum, 0, olddataitemstoleft, itemsz);
  else if (offnum > newitemoff)
   _bt_recsplitloc(&state, offnum, 1, olddataitemstoleft, itemsz);
  else
  {




   _bt_recsplitloc(&state, offnum, 0, olddataitemstoleft, itemsz);





   _bt_recsplitloc(&state, offnum, 1, olddataitemstoleft, itemsz);
  }

  olddataitemstoleft += itemsz;
 }






 Assert(olddataitemstoleft == olddataitemstotal);
 if (newitemoff > maxoff)
  _bt_recsplitloc(&state, newitemoff, 0, olddataitemstotal, 0);





 if (state.nsplits == 0)
  elog(ERROR, "could not find a feasible split point for index \"%s\"",
    RelationGetRelationName(rel));
 if (!state.is_leaf)
 {

  usemult = state.is_rightmost;
  fillfactormult = BTREE_NONLEAF_FILLFACTOR / 100.0;
 }
 else if (state.is_rightmost)
 {

  usemult = 1;
  fillfactormult = leaffillfactor / 100.0;
 }
 else if (_bt_afternewitemoff(&state, maxoff, leaffillfactor, &usemult))
 {







  if (usemult)
  {

   fillfactormult = leaffillfactor / 100.0;
  }
  else
  {

   for (int i = 0; i < state.nsplits; i++)
   {
    SplitPoint *split = state.splits + i;

    if (split->newitemonleft &&
     newitemoff == split->firstoldonright)
    {
     pfree(state.splits);
     *newitemonleft = 1;
     return newitemoff;
    }
   }






   fillfactormult = 0.50;
  }
 }
 else
 {

  usemult = 0;

  fillfactormult = 0.50;
 }
 state.interval = Min(Max(1, state.nsplits * 0.05),
       state.is_leaf ? MAX_LEAF_INTERVAL :
       MAX_INTERNAL_INTERVAL);





 leftpage = state.splits[0];
 rightpage = state.splits[state.nsplits - 1];


 _bt_deltasortsplits(&state, fillfactormult, usemult);
 perfectpenalty = _bt_strategy(&state, &leftpage, &rightpage, &strategy);

 if (strategy == SPLIT_DEFAULT)
 {




 }
 else if (strategy == SPLIT_MANY_DUPLICATES)
 {
  Assert(state.is_leaf);

  Assert(perfectpenalty ==
      IndexRelationGetNumberOfKeyAttributes(state.rel));

  state.interval = state.nsplits;
 }
 else if (strategy == SPLIT_SINGLE_VALUE)
 {
  Assert(state.is_leaf);

  usemult = 1;
  fillfactormult = BTREE_SINGLEVAL_FILLFACTOR / 100.0;

  _bt_deltasortsplits(&state, fillfactormult, usemult);

  state.interval = 1;
 }






 foundfirstright = _bt_bestsplitloc(&state, perfectpenalty, newitemonleft,
            strategy);
 pfree(state.splits);

 return foundfirstright;
}
