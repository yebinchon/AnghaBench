
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_4__ {int t_info; int t_tid; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_1__* IndexTuple ;
typedef int BTPageOpaque ;


 int Assert (int) ;
 scalar_t__ BT_N_KEYS_OFFSET_MASK ;
 int * BTreeTupleGetHeapTID (TYPE_1__*) ;
 int BTreeTupleGetNAtts (TYPE_1__*,int ) ;
 scalar_t__ FirstOffsetNumber ;
 int INDEX_ALT_TID_MASK ;
 scalar_t__ INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfAttributes (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 scalar_t__ P_FIRSTDATAKEY (int ) ;
 scalar_t__ P_HIKEY ;
 scalar_t__ P_IGNORE (int ) ;
 scalar_t__ P_ISLEAF (int ) ;
 int P_RIGHTMOST (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageGetSpecialPointer (int ) ;
 int StaticAssertStmt (int,char*) ;

bool
_bt_check_natts(Relation rel, bool heapkeyspace, Page page, OffsetNumber offnum)
{
 int16 natts = IndexRelationGetNumberOfAttributes(rel);
 int16 nkeyatts = IndexRelationGetNumberOfKeyAttributes(rel);
 BTPageOpaque opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 IndexTuple itup;
 int tupnatts;





 if (P_IGNORE(opaque))
  return 1;

 Assert(offnum >= FirstOffsetNumber &&
     offnum <= PageGetMaxOffsetNumber(page));





 StaticAssertStmt(BT_N_KEYS_OFFSET_MASK >= INDEX_MAX_KEYS,
      "BT_N_KEYS_OFFSET_MASK can't fit INDEX_MAX_KEYS");

 itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, offnum));
 tupnatts = BTreeTupleGetNAtts(itup, rel);

 if (P_ISLEAF(opaque))
 {
  if (offnum >= P_FIRSTDATAKEY(opaque))
  {




   if ((itup->t_info & INDEX_ALT_TID_MASK) != 0)
    return 0;







   return tupnatts == natts;
  }
  else
  {




   Assert(!P_RIGHTMOST(opaque));






   if (!heapkeyspace)
    return tupnatts == nkeyatts;


  }
 }
 else
 {
  if (offnum == P_FIRSTDATAKEY(opaque))
  {






   if (heapkeyspace)
    return tupnatts == 0;
   return tupnatts == 0 ||
    ((itup->t_info & INDEX_ALT_TID_MASK) == 0 &&
     ItemPointerGetOffsetNumber(&(itup->t_tid)) == P_HIKEY);
  }
  else
  {






   if (!heapkeyspace)
    return tupnatts == nkeyatts;


  }

 }


 Assert(heapkeyspace);






 if ((itup->t_info & INDEX_ALT_TID_MASK) == 0)
  return 0;





 if (BTreeTupleGetHeapTID(itup) != ((void*)0) && tupnatts != nkeyatts)
  return 0;







 return tupnatts > 0 && tupnatts <= nkeyatts;
}
