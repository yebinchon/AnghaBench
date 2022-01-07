
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef int TupleDesc ;
struct TYPE_3__ {int sk_attno; int sk_flags; int sk_strategy; int sk_argument; int sk_collation; int sk_func; } ;
typedef TYPE_1__* ScanKey ;
typedef int ScanDirection ;
typedef int IndexTuple ;
typedef int Datum ;


 int Assert (int) ;




 scalar_t__ DatumGetInt32 (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int INVERT_COMPARE_RESULT (scalar_t__) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int SK_BT_REQBKWD ;
 int SK_BT_REQFWD ;
 int SK_ISNULL ;
 int SK_ROW_END ;
 int SK_ROW_MEMBER ;
 scalar_t__ ScanDirectionIsBackward (int ) ;
 int ScanDirectionIsForward (int ) ;
 int elog (int ,char*,int) ;
 int index_getattr (int ,int,int ,int*) ;

__attribute__((used)) static bool
_bt_check_rowcompare(ScanKey skey, IndexTuple tuple, int tupnatts,
      TupleDesc tupdesc, ScanDirection dir, bool *continuescan)
{
 ScanKey subkey = (ScanKey) DatumGetPointer(skey->sk_argument);
 int32 cmpresult = 0;
 bool result;


 Assert(subkey->sk_attno == skey->sk_attno);


 for (;;)
 {
  Datum datum;
  bool isNull;

  Assert(subkey->sk_flags & SK_ROW_MEMBER);

  if (subkey->sk_attno > tupnatts)
  {






   Assert(ScanDirectionIsForward(dir));
   cmpresult = 0;
   if (subkey->sk_flags & SK_ROW_END)
    break;
   subkey++;
   continue;
  }

  datum = index_getattr(tuple,
         subkey->sk_attno,
         tupdesc,
         &isNull);

  if (isNull)
  {
   if (subkey->sk_flags & SK_BT_NULLS_FIRST)
   {
    if ((subkey->sk_flags & (SK_BT_REQFWD | SK_BT_REQBKWD)) &&
     ScanDirectionIsBackward(dir))
     *continuescan = 0;
   }
   else
   {
    if ((subkey->sk_flags & (SK_BT_REQFWD | SK_BT_REQBKWD)) &&
     ScanDirectionIsForward(dir))
     *continuescan = 0;
   }




   return 0;
  }

  if (subkey->sk_flags & SK_ISNULL)
  {






   if (subkey != (ScanKey) DatumGetPointer(skey->sk_argument))
    subkey--;
   if ((subkey->sk_flags & SK_BT_REQFWD) &&
    ScanDirectionIsForward(dir))
    *continuescan = 0;
   else if ((subkey->sk_flags & SK_BT_REQBKWD) &&
      ScanDirectionIsBackward(dir))
    *continuescan = 0;
   return 0;
  }


  cmpresult = DatumGetInt32(FunctionCall2Coll(&subkey->sk_func,
             subkey->sk_collation,
             datum,
             subkey->sk_argument));

  if (subkey->sk_flags & SK_BT_DESC)
   INVERT_COMPARE_RESULT(cmpresult);


  if (cmpresult != 0)
   break;

  if (subkey->sk_flags & SK_ROW_END)
   break;
  subkey++;
 }






 switch (subkey->sk_strategy)
 {

  case 128:
   result = (cmpresult < 0);
   break;
  case 129:
   result = (cmpresult <= 0);
   break;
  case 131:
   result = (cmpresult >= 0);
   break;
  case 130:
   result = (cmpresult > 0);
   break;
  default:
   elog(ERROR, "unrecognized RowCompareType: %d",
     (int) subkey->sk_strategy);
   result = 0;
   break;
 }

 if (!result)
 {






  if ((subkey->sk_flags & SK_BT_REQFWD) &&
   ScanDirectionIsForward(dir))
   *continuescan = 0;
  else if ((subkey->sk_flags & SK_BT_REQBKWD) &&
     ScanDirectionIsBackward(dir))
   *continuescan = 0;
 }

 return result;
}
