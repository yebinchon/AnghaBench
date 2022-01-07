
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int xform ;
typedef int int16 ;
struct TYPE_18__ {int qual_ok; int numberOfKeys; TYPE_2__* keyData; TYPE_2__* arrayKeyData; } ;
struct TYPE_17__ {int numberOfKeys; TYPE_2__* keyData; TYPE_1__* indexRelation; int opaque; } ;
struct TYPE_16__ {int sk_attno; int sk_flags; int sk_strategy; } ;
struct TYPE_15__ {int * rd_indoption; } ;
typedef int ScanKeyData ;
typedef TYPE_2__* ScanKey ;
typedef TYPE_3__* IndexScanDesc ;
typedef TYPE_4__* BTScanOpaque ;
typedef int AttrNumber ;


 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int BTGreaterEqualStrategyNumber ;
 int BTGreaterStrategyNumber ;
 int BTLessEqualStrategyNumber ;
 int BTLessStrategyNumber ;
 int BTMaxStrategyNumber ;
 int ERROR ;
 int SK_ROW_HEADER ;
 int SK_SEARCHNULL ;
 scalar_t__ _bt_compare_scankey_args (TYPE_3__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int*) ;
 int _bt_fix_scankey_strategy (TYPE_2__*,int *) ;
 int _bt_mark_scankey_required (TYPE_2__*) ;
 int elog (int ,char*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (TYPE_2__**,int ,int) ;

void
_bt_preprocess_keys(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 int numberOfKeys = scan->numberOfKeys;
 int16 *indoption = scan->indexRelation->rd_indoption;
 int new_numberOfKeys;
 int numberOfEqualCols;
 ScanKey inkeys;
 ScanKey outkeys;
 ScanKey cur;
 ScanKey xform[BTMaxStrategyNumber];
 bool test_result;
 int i,
    j;
 AttrNumber attno;


 so->qual_ok = 1;
 so->numberOfKeys = 0;

 if (numberOfKeys < 1)
  return;




 if (so->arrayKeyData != ((void*)0))
  inkeys = so->arrayKeyData;
 else
  inkeys = scan->keyData;

 outkeys = so->keyData;
 cur = &inkeys[0];

 if (cur->sk_attno < 1)
  elog(ERROR, "btree index keys must be ordered by attribute");


 if (numberOfKeys == 1)
 {

  if (!_bt_fix_scankey_strategy(cur, indoption))
   so->qual_ok = 0;
  memcpy(outkeys, cur, sizeof(ScanKeyData));
  so->numberOfKeys = 1;

  if (cur->sk_attno == 1)
   _bt_mark_scankey_required(outkeys);
  return;
 }




 new_numberOfKeys = 0;
 numberOfEqualCols = 0;







 attno = 1;
 memset(xform, 0, sizeof(xform));






 for (i = 0;; cur++, i++)
 {
  if (i < numberOfKeys)
  {

   if (!_bt_fix_scankey_strategy(cur, indoption))
   {

    so->qual_ok = 0;
    return;
   }
  }





  if (i == numberOfKeys || cur->sk_attno != attno)
  {
   int priorNumberOfEqualCols = numberOfEqualCols;


   if (i < numberOfKeys && cur->sk_attno < attno)
    elog(ERROR, "btree index keys must be ordered by attribute");
   if (xform[BTEqualStrategyNumber - 1])
   {
    ScanKey eq = xform[BTEqualStrategyNumber - 1];

    for (j = BTMaxStrategyNumber; --j >= 0;)
    {
     ScanKey chk = xform[j];

     if (!chk || j == (BTEqualStrategyNumber - 1))
      continue;

     if (eq->sk_flags & SK_SEARCHNULL)
     {

      so->qual_ok = 0;
      return;
     }

     if (_bt_compare_scankey_args(scan, chk, eq, chk,
             &test_result))
     {
      if (!test_result)
      {

       so->qual_ok = 0;
       return;
      }

      xform[j] = ((void*)0);
     }

    }

    numberOfEqualCols++;
   }


   if (xform[BTLessStrategyNumber - 1]
    && xform[BTLessEqualStrategyNumber - 1])
   {
    ScanKey lt = xform[BTLessStrategyNumber - 1];
    ScanKey le = xform[BTLessEqualStrategyNumber - 1];

    if (_bt_compare_scankey_args(scan, le, lt, le,
            &test_result))
    {
     if (test_result)
      xform[BTLessEqualStrategyNumber - 1] = ((void*)0);
     else
      xform[BTLessStrategyNumber - 1] = ((void*)0);
    }
   }


   if (xform[BTGreaterStrategyNumber - 1]
    && xform[BTGreaterEqualStrategyNumber - 1])
   {
    ScanKey gt = xform[BTGreaterStrategyNumber - 1];
    ScanKey ge = xform[BTGreaterEqualStrategyNumber - 1];

    if (_bt_compare_scankey_args(scan, ge, gt, ge,
            &test_result))
    {
     if (test_result)
      xform[BTGreaterEqualStrategyNumber - 1] = ((void*)0);
     else
      xform[BTGreaterStrategyNumber - 1] = ((void*)0);
    }
   }






   for (j = BTMaxStrategyNumber; --j >= 0;)
   {
    if (xform[j])
    {
     ScanKey outkey = &outkeys[new_numberOfKeys++];

     memcpy(outkey, xform[j], sizeof(ScanKeyData));
     if (priorNumberOfEqualCols == attno - 1)
      _bt_mark_scankey_required(outkey);
    }
   }




   if (i == numberOfKeys)
    break;


   attno = cur->sk_attno;
   memset(xform, 0, sizeof(xform));
  }


  j = cur->sk_strategy - 1;


  if (cur->sk_flags & SK_ROW_HEADER)
  {
   ScanKey outkey = &outkeys[new_numberOfKeys++];

   memcpy(outkey, cur, sizeof(ScanKeyData));
   if (numberOfEqualCols == attno - 1)
    _bt_mark_scankey_required(outkey);





   Assert(j != (BTEqualStrategyNumber - 1));
   continue;
  }


  if (xform[j] == ((void*)0))
  {

   xform[j] = cur;
  }
  else
  {

   if (_bt_compare_scankey_args(scan, cur, cur, xform[j],
           &test_result))
   {
    if (test_result)
     xform[j] = cur;
    else if (j == (BTEqualStrategyNumber - 1))
    {

     so->qual_ok = 0;
     return;
    }

   }
   else
   {





    ScanKey outkey = &outkeys[new_numberOfKeys++];

    memcpy(outkey, cur, sizeof(ScanKeyData));
    if (numberOfEqualCols == attno - 1)
     _bt_mark_scankey_required(outkey);
   }
  }
 }

 so->numberOfKeys = new_numberOfKeys;
}
