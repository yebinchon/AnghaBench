
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ itemsz; int bounds_valid; scalar_t__ low; scalar_t__ stricthigh; int buf; int itup; TYPE_1__* itup_key; } ;
struct TYPE_7__ {scalar_t__ heapkeyspace; int * scantid; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int BTStack ;
typedef TYPE_1__* BTScanInsert ;
typedef scalar_t__ BTPageOpaque ;
typedef TYPE_2__* BTInsertState ;


 int Assert (int) ;
 scalar_t__ BTMaxItemSize (int ) ;
 int BufferGetPage (int ) ;
 int MAX_RANDOM_VALUE ;
 scalar_t__ P_HAS_GARBAGE (scalar_t__) ;
 int P_HIKEY ;
 int P_INCOMPLETE_SPLIT (scalar_t__) ;
 scalar_t__ P_ISLEAF (scalar_t__) ;
 scalar_t__ P_RIGHTMOST (scalar_t__) ;
 scalar_t__ PageGetFreeSpace (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _bt_binsrch_insert (int ,TYPE_2__*) ;
 int _bt_check_third_page (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ _bt_compare (int ,TYPE_1__*,int ,int ) ;
 int _bt_stepright (int ,TYPE_2__*,int ) ;
 int _bt_vacuum_one_page (int ,int ,int ) ;
 int random () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static OffsetNumber
_bt_findinsertloc(Relation rel,
      BTInsertState insertstate,
      bool checkingunique,
      BTStack stack,
      Relation heapRel)
{
 BTScanInsert itup_key = insertstate->itup_key;
 Page page = BufferGetPage(insertstate->buf);
 BTPageOpaque lpageop;

 lpageop = (BTPageOpaque) PageGetSpecialPointer(page);


 if (unlikely(insertstate->itemsz > BTMaxItemSize(page)))
  _bt_check_third_page(rel, heapRel, itup_key->heapkeyspace, page,
        insertstate->itup);

 Assert(P_ISLEAF(lpageop) && !P_INCOMPLETE_SPLIT(lpageop));
 Assert(!insertstate->bounds_valid || checkingunique);
 Assert(!itup_key->heapkeyspace || itup_key->scantid != ((void*)0));
 Assert(itup_key->heapkeyspace || itup_key->scantid == ((void*)0));

 if (itup_key->heapkeyspace)
 {
  if (checkingunique)
  {
   for (;;)
   {
    if (insertstate->bounds_valid &&
     insertstate->low <= insertstate->stricthigh &&
     insertstate->stricthigh <= PageGetMaxOffsetNumber(page))
     break;


    if (P_RIGHTMOST(lpageop) ||
     _bt_compare(rel, itup_key, page, P_HIKEY) <= 0)
     break;

    _bt_stepright(rel, insertstate, stack);

    page = BufferGetPage(insertstate->buf);
    lpageop = (BTPageOpaque) PageGetSpecialPointer(page);
   }
  }





  if (PageGetFreeSpace(page) < insertstate->itemsz &&
   P_HAS_GARBAGE(lpageop))
  {
   _bt_vacuum_one_page(rel, insertstate->buf, heapRel);
   insertstate->bounds_valid = 0;
  }
 }
 else
 {
  while (PageGetFreeSpace(page) < insertstate->itemsz)
  {




   if (P_HAS_GARBAGE(lpageop))
   {
    _bt_vacuum_one_page(rel, insertstate->buf, heapRel);
    insertstate->bounds_valid = 0;

    if (PageGetFreeSpace(page) >= insertstate->itemsz)
     break;
   }
   if (insertstate->bounds_valid &&
    insertstate->low <= insertstate->stricthigh &&
    insertstate->stricthigh <= PageGetMaxOffsetNumber(page))
    break;

   if (P_RIGHTMOST(lpageop) ||
    _bt_compare(rel, itup_key, page, P_HIKEY) != 0 ||
    random() <= (MAX_RANDOM_VALUE / 100))
    break;

   _bt_stepright(rel, insertstate, stack);

   page = BufferGetPage(insertstate->buf);
   lpageop = (BTPageOpaque) PageGetSpecialPointer(page);
  }
 }





 Assert(P_RIGHTMOST(lpageop) ||
     _bt_compare(rel, itup_key, page, P_HIKEY) <= 0);

 return _bt_binsrch_insert(rel, insertstate);
}
