
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; } ;


 int Assert (int ) ;
 int BlockStateAsString (int) ;
 int * CurTransactionContext ;
 TYPE_1__* CurrentTransactionState ;
 int ERROR ;
 int MemoryContextSwitchTo (int *) ;
 int StartTransaction () ;
 int elog (int ,char*,int ) ;

void
StartTransactionCommand(void)
{
 TransactionState s = CurrentTransactionState;

 switch (s->blockState)
 {




  case 143:
   StartTransaction();
   s->blockState = 137;
   break;
  case 140:
  case 141:
  case 130:
   break;
  case 147:
  case 136:
   break;


  case 137:
  case 144:
  case 139:
  case 132:
  case 142:
  case 129:
  case 131:
  case 146:
  case 135:
  case 145:
  case 134:
  case 128:
  case 133:
  case 138:
   elog(ERROR, "StartTransactionCommand: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;
 }





 Assert(CurTransactionContext != ((void*)0));
 MemoryContextSwitchTo(CurTransactionContext);
}
