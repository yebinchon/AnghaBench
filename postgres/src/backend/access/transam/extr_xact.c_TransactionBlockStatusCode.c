
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int blockState; } ;


 int BlockStateAsString (int) ;
 TYPE_1__* CurrentTransactionState ;
 int FATAL ;
 int elog (int ,char*,int ) ;

char
TransactionBlockStatusCode(void)
{
 TransactionState s = CurrentTransactionState;

 switch (s->blockState)
 {
  case 143:
  case 137:
   return 'I';
  case 144:
  case 132:
  case 140:
  case 141:
  case 139:
  case 130:
  case 142:
  case 129:
  case 131:
  case 138:
   return 'T';
  case 147:
  case 136:
  case 146:
  case 135:
  case 145:
  case 134:
  case 128:
  case 133:
   return 'E';
 }


 elog(FATAL, "invalid transaction block state: %s",
   BlockStateAsString(s->blockState));
 return 0;
}
