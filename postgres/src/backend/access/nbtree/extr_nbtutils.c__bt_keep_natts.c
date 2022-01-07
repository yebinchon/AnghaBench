
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {TYPE_1__* scankeys; int heapkeyspace; } ;
struct TYPE_4__ {int sk_collation; int sk_func; } ;
typedef TYPE_1__* ScanKey ;
typedef int Relation ;
typedef int IndexTuple ;
typedef int Datum ;
typedef TYPE_2__* BTScanInsert ;


 int Assert (int) ;
 scalar_t__ DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int IndexRelationGetNumberOfAttributes (int ) ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 int RelationGetDescr (int ) ;
 int index_getattr (int ,int,int ,int*) ;

__attribute__((used)) static int
_bt_keep_natts(Relation rel, IndexTuple lastleft, IndexTuple firstright,
      BTScanInsert itup_key)
{
 int nkeyatts = IndexRelationGetNumberOfKeyAttributes(rel);
 TupleDesc itupdesc = RelationGetDescr(rel);
 int keepnatts;
 ScanKey scankey;
 if (!itup_key->heapkeyspace)
 {
  Assert(nkeyatts != IndexRelationGetNumberOfAttributes(rel));
  return nkeyatts;
 }

 scankey = itup_key->scankeys;
 keepnatts = 1;
 for (int attnum = 1; attnum <= nkeyatts; attnum++, scankey++)
 {
  Datum datum1,
     datum2;
  bool isNull1,
     isNull2;

  datum1 = index_getattr(lastleft, attnum, itupdesc, &isNull1);
  datum2 = index_getattr(firstright, attnum, itupdesc, &isNull2);

  if (isNull1 != isNull2)
   break;

  if (!isNull1 &&
   DatumGetInt32(FunctionCall2Coll(&scankey->sk_func,
           scankey->sk_collation,
           datum1,
           datum2)) != 0)
   break;

  keepnatts++;
 }

 return keepnatts;
}
