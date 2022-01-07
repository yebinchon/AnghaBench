
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_5__ {int keysz; int * scantid; int pivotsearch; scalar_t__ heapkeyspace; TYPE_1__* scankeys; } ;
struct TYPE_4__ {int sk_flags; int sk_argument; int sk_collation; int sk_func; int sk_attno; } ;
typedef TYPE_1__* ScanKey ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemPointer ;
typedef scalar_t__ IndexTuple ;
typedef int Datum ;
typedef TYPE_2__* BTScanInsert ;
typedef int BTPageOpaque ;


 int Assert (int) ;
 int * BTreeTupleGetHeapTID (scalar_t__) ;
 int BTreeTupleGetNAtts (scalar_t__,int ) ;
 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int INVERT_COMPARE_RESULT (int) ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int ItemPointerCompare (int *,int *) ;
 int Min (int,int) ;
 scalar_t__ P_FIRSTDATAKEY (int ) ;
 int P_ISLEAF (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 int PageGetSpecialPointer (int ) ;
 int RelationGetDescr (int ) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int SK_ISNULL ;
 int _bt_check_natts (int ,scalar_t__,int ,scalar_t__) ;
 int index_getattr (scalar_t__,int ,int ,int*) ;

int32
_bt_compare(Relation rel,
   BTScanInsert key,
   Page page,
   OffsetNumber offnum)
{
 TupleDesc itupdesc = RelationGetDescr(rel);
 BTPageOpaque opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 IndexTuple itup;
 ItemPointer heapTid;
 ScanKey scankey;
 int ncmpkey;
 int ntupatts;

 Assert(_bt_check_natts(rel, key->heapkeyspace, page, offnum));
 Assert(key->keysz <= IndexRelationGetNumberOfKeyAttributes(rel));
 Assert(key->heapkeyspace || key->scantid == ((void*)0));





 if (!P_ISLEAF(opaque) && offnum == P_FIRSTDATAKEY(opaque))
  return 1;

 itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, offnum));
 ntupatts = BTreeTupleGetNAtts(itup, rel);
 ncmpkey = Min(ntupatts, key->keysz);
 Assert(key->heapkeyspace || ncmpkey == key->keysz);
 scankey = key->scankeys;
 for (int i = 1; i <= ncmpkey; i++)
 {
  Datum datum;
  bool isNull;
  int32 result;

  datum = index_getattr(itup, scankey->sk_attno, itupdesc, &isNull);


  if (scankey->sk_flags & SK_ISNULL)
  {
   if (isNull)
    result = 0;
   else if (scankey->sk_flags & SK_BT_NULLS_FIRST)
    result = -1;
   else
    result = 1;
  }
  else if (isNull)
  {
   if (scankey->sk_flags & SK_BT_NULLS_FIRST)
    result = 1;
   else
    result = -1;
  }
  else
  {
   result = DatumGetInt32(FunctionCall2Coll(&scankey->sk_func,
              scankey->sk_collation,
              datum,
              scankey->sk_argument));

   if (!(scankey->sk_flags & SK_BT_DESC))
    INVERT_COMPARE_RESULT(result);
  }


  if (result != 0)
   return result;

  scankey++;
 }
 if (key->keysz > ntupatts)
  return 1;






 heapTid = BTreeTupleGetHeapTID(itup);
 if (key->scantid == ((void*)0))
 {
  if (key->heapkeyspace && !key->pivotsearch &&
   key->keysz == ntupatts && heapTid == ((void*)0))
   return 1;


  return 0;
 }





 Assert(key->keysz == IndexRelationGetNumberOfKeyAttributes(rel));
 if (heapTid == ((void*)0))
  return 1;

 Assert(ntupatts >= IndexRelationGetNumberOfKeyAttributes(rel));
 return ItemPointerCompare(key->scantid, heapTid);
}
