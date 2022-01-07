
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_3__ {int sk_attno; int sk_flags; void* sk_strategy; int sk_argument; void* sk_collation; void* sk_subtype; } ;
typedef TYPE_1__* ScanKey ;


 int Assert (int) ;
 void* BTCommuteStrategyNumber (void*) ;
 void* BTEqualStrategyNumber ;
 void* BTGreaterStrategyNumber ;
 void* BTLessStrategyNumber ;
 int DatumGetPointer (int ) ;
 void* InvalidOid ;
 int SK_BT_DESC ;
 int SK_BT_INDOPTION_SHIFT ;
 int SK_BT_NULLS_FIRST ;
 int SK_ISNULL ;
 int SK_ROW_END ;
 int SK_ROW_HEADER ;
 int SK_ROW_MEMBER ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;

__attribute__((used)) static bool
_bt_fix_scankey_strategy(ScanKey skey, int16 *indoption)
{
 int addflags;

 addflags = indoption[skey->sk_attno - 1] << SK_BT_INDOPTION_SHIFT;
 if (skey->sk_flags & SK_ISNULL)
 {

  Assert(!(skey->sk_flags & SK_ROW_HEADER));


  skey->sk_flags |= addflags;


  if (skey->sk_flags & SK_SEARCHNULL)
  {
   skey->sk_strategy = BTEqualStrategyNumber;
   skey->sk_subtype = InvalidOid;
   skey->sk_collation = InvalidOid;
  }
  else if (skey->sk_flags & SK_SEARCHNOTNULL)
  {
   if (skey->sk_flags & SK_BT_NULLS_FIRST)
    skey->sk_strategy = BTGreaterStrategyNumber;
   else
    skey->sk_strategy = BTLessStrategyNumber;
   skey->sk_subtype = InvalidOid;
   skey->sk_collation = InvalidOid;
  }
  else
  {

   return 0;
  }


  return 1;
 }


 if ((addflags & SK_BT_DESC) && !(skey->sk_flags & SK_BT_DESC))
  skey->sk_strategy = BTCommuteStrategyNumber(skey->sk_strategy);
 skey->sk_flags |= addflags;


 if (skey->sk_flags & SK_ROW_HEADER)
 {
  ScanKey subkey = (ScanKey) DatumGetPointer(skey->sk_argument);

  for (;;)
  {
   Assert(subkey->sk_flags & SK_ROW_MEMBER);
   addflags = indoption[subkey->sk_attno - 1] << SK_BT_INDOPTION_SHIFT;
   if ((addflags & SK_BT_DESC) && !(subkey->sk_flags & SK_BT_DESC))
    subkey->sk_strategy = BTCommuteStrategyNumber(subkey->sk_strategy);
   subkey->sk_flags |= addflags;
   if (subkey->sk_flags & SK_ROW_END)
    break;
   subkey++;
  }
 }

 return 1;
}
