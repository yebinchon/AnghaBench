
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sk_strategy; int sk_flags; scalar_t__ sk_attno; int sk_argument; } ;
typedef TYPE_1__* ScanKey ;


 int Assert (int) ;





 int DatumGetPointer (int ) ;
 int ERROR ;
 int SK_BT_REQBKWD ;
 int SK_BT_REQFWD ;
 int SK_ROW_HEADER ;
 int SK_ROW_MEMBER ;
 int elog (int ,char*,int) ;

__attribute__((used)) static void
_bt_mark_scankey_required(ScanKey skey)
{
 int addflags;

 switch (skey->sk_strategy)
 {
  case 128:
  case 129:
   addflags = SK_BT_REQFWD;
   break;
  case 132:
   addflags = SK_BT_REQFWD | SK_BT_REQBKWD;
   break;
  case 131:
  case 130:
   addflags = SK_BT_REQBKWD;
   break;
  default:
   elog(ERROR, "unrecognized StrategyNumber: %d",
     (int) skey->sk_strategy);
   addflags = 0;
   break;
 }

 skey->sk_flags |= addflags;

 if (skey->sk_flags & SK_ROW_HEADER)
 {
  ScanKey subkey = (ScanKey) DatumGetPointer(skey->sk_argument);


  Assert(subkey->sk_flags & SK_ROW_MEMBER);
  Assert(subkey->sk_attno == skey->sk_attno);
  Assert(subkey->sk_strategy == skey->sk_strategy);
  subkey->sk_flags |= addflags;
 }
}
