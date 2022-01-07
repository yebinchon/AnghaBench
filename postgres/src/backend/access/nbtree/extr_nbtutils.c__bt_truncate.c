
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleDesc ;
struct TYPE_21__ {int heapkeyspace; } ;
struct TYPE_20__ {int t_info; int t_tid; } ;
typedef int Size ;
typedef int Relation ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__* BTScanInsert ;


 int Assert (int) ;
 int BTreeTupleGetNAtts (TYPE_1__*,int ) ;
 int BTreeTupleSetAltHeapTID (TYPE_1__*) ;
 int BTreeTupleSetNAtts (TYPE_1__*,int) ;
 int INDEX_SIZE_MASK ;
 int IndexRelationGetNumberOfAttributes (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int IndexTupleSize (TYPE_1__*) ;
 scalar_t__ ItemPointerCompare (int *,int *) ;
 int ItemPointerCopy (int *,int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerSetOffsetNumber (int *,int ) ;
 int MAXALIGN (int) ;
 int OffsetNumberPrev (int ) ;
 int RelationGetDescr (int ) ;
 int _bt_keep_natts (int ,TYPE_1__*,TYPE_1__*,TYPE_2__*) ;
 TYPE_1__* index_truncate_tuple (int ,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* palloc0 (int) ;
 int pfree (TYPE_1__*) ;

IndexTuple
_bt_truncate(Relation rel, IndexTuple lastleft, IndexTuple firstright,
    BTScanInsert itup_key)
{
 TupleDesc itupdesc = RelationGetDescr(rel);
 int16 natts = IndexRelationGetNumberOfAttributes(rel);
 int16 nkeyatts = IndexRelationGetNumberOfKeyAttributes(rel);
 int keepnatts;
 IndexTuple pivot;
 ItemPointer pivotheaptid;
 Size newsize;





 Assert(BTreeTupleGetNAtts(lastleft, rel) == natts);
 Assert(BTreeTupleGetNAtts(firstright, rel) == natts);


 keepnatts = _bt_keep_natts(rel, lastleft, firstright, itup_key);






 if (keepnatts <= natts)
 {
  IndexTuple tidpivot;

  pivot = index_truncate_tuple(itupdesc, firstright, keepnatts);





  if (keepnatts <= nkeyatts)
  {
   BTreeTupleSetNAtts(pivot, keepnatts);
   return pivot;
  }






  Assert(natts != nkeyatts);
  newsize = IndexTupleSize(pivot) + MAXALIGN(sizeof(ItemPointerData));
  tidpivot = palloc0(newsize);
  memcpy(tidpivot, pivot, IndexTupleSize(pivot));

  pfree(pivot);
  pivot = tidpivot;
 }
 else
 {




  Assert(natts == nkeyatts);
  newsize = IndexTupleSize(firstright) + MAXALIGN(sizeof(ItemPointerData));
  pivot = palloc0(newsize);
  memcpy(pivot, firstright, IndexTupleSize(firstright));
 }
 Assert(itup_key->heapkeyspace);
 pivot->t_info &= ~INDEX_SIZE_MASK;
 pivot->t_info |= newsize;
 pivotheaptid = (ItemPointer) ((char *) pivot + newsize -
          sizeof(ItemPointerData));
 ItemPointerCopy(&lastleft->t_tid, pivotheaptid);
 Assert(ItemPointerCompare(&lastleft->t_tid, &firstright->t_tid) < 0);
 Assert(ItemPointerCompare(pivotheaptid, &lastleft->t_tid) >= 0);
 Assert(ItemPointerCompare(pivotheaptid, &firstright->t_tid) < 0);
 BTreeTupleSetNAtts(pivot, nkeyatts);
 BTreeTupleSetAltHeapTID(pivot);

 return pivot;
}
