
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_8__ {int numberOfKeys; TYPE_1__* keyData; } ;
struct TYPE_7__ {scalar_t__ opaque; int indexRelation; } ;
struct TYPE_6__ {int sk_attno; int sk_flags; int sk_argument; int sk_collation; int sk_func; } ;
typedef TYPE_1__* ScanKey ;
typedef int ScanDirection ;
typedef int IndexTuple ;
typedef TYPE_2__* IndexScanDesc ;
typedef int Datum ;
typedef TYPE_3__* BTScanOpaque ;


 int Assert (int) ;
 int BTreeTupleGetNAtts (int ,int ) ;
 int DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int RelationGetDescr (int ) ;
 int SK_BT_NULLS_FIRST ;
 int SK_BT_REQBKWD ;
 int SK_BT_REQFWD ;
 int SK_ISNULL ;
 int SK_ROW_HEADER ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 int ScanDirectionIsForward (int ) ;
 scalar_t__ _bt_check_rowcompare (TYPE_1__*,int ,int,int ,int ,int*) ;
 int index_getattr (int ,int,int ,int*) ;

bool
_bt_checkkeys(IndexScanDesc scan, IndexTuple tuple, int tupnatts,
     ScanDirection dir, bool *continuescan)
{
 TupleDesc tupdesc;
 BTScanOpaque so;
 int keysz;
 int ikey;
 ScanKey key;

 Assert(BTreeTupleGetNAtts(tuple, scan->indexRelation) == tupnatts);

 *continuescan = 1;

 tupdesc = RelationGetDescr(scan->indexRelation);
 so = (BTScanOpaque) scan->opaque;
 keysz = so->numberOfKeys;

 for (key = so->keyData, ikey = 0; ikey < keysz; key++, ikey++)
 {
  Datum datum;
  bool isNull;
  Datum test;

  if (key->sk_attno > tupnatts)
  {






   Assert(ScanDirectionIsForward(dir));
   continue;
  }


  if (key->sk_flags & SK_ROW_HEADER)
  {
   if (_bt_check_rowcompare(key, tuple, tupnatts, tupdesc, dir,
          continuescan))
    continue;
   return 0;
  }

  datum = index_getattr(tuple,
         key->sk_attno,
         tupdesc,
         &isNull);

  if (key->sk_flags & SK_ISNULL)
  {

   if (key->sk_flags & SK_SEARCHNULL)
   {
    if (isNull)
     continue;
   }
   else
   {
    Assert(key->sk_flags & SK_SEARCHNOTNULL);
    if (!isNull)
     continue;
   }






   if ((key->sk_flags & SK_BT_REQFWD) &&
    ScanDirectionIsForward(dir))
    *continuescan = 0;
   else if ((key->sk_flags & SK_BT_REQBKWD) &&
      ScanDirectionIsBackward(dir))
    *continuescan = 0;




   return 0;
  }

  if (isNull)
  {
   if (key->sk_flags & SK_BT_NULLS_FIRST)
   {
    if ((key->sk_flags & (SK_BT_REQFWD | SK_BT_REQBKWD)) &&
     ScanDirectionIsBackward(dir))
     *continuescan = 0;
   }
   else
   {
    if ((key->sk_flags & (SK_BT_REQFWD | SK_BT_REQBKWD)) &&
     ScanDirectionIsForward(dir))
     *continuescan = 0;
   }




   return 0;
  }

  test = FunctionCall2Coll(&key->sk_func, key->sk_collation,
         datum, key->sk_argument);

  if (!DatumGetBool(test))
  {
   if ((key->sk_flags & SK_BT_REQFWD) &&
    ScanDirectionIsForward(dir))
    *continuescan = 0;
   else if ((key->sk_flags & SK_BT_REQBKWD) &&
      ScanDirectionIsBackward(dir))
    *continuescan = 0;




   return 0;
  }
 }


 return 1;
}
