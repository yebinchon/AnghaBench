
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
struct TYPE_3__ {int chain; int blockState; char* name; int savepointLevel; int * parent; } ;


 int AbortSubTransaction () ;
 int AbortTransaction () ;
 int Assert (int) ;
 int AssertState (int) ;
 int BlockStateAsString (int) ;
 int CleanupSubTransaction () ;
 int CleanupTransaction () ;
 int CommandCounterIncrement () ;
 int CommitSubTransaction () ;
 int CommitTransaction () ;
 TYPE_1__* CurrentTransactionState ;
 int DefineSavepoint (int *) ;
 int ERROR ;
 int FATAL ;
 int PrepareTransaction () ;
 int RestoreTransactionCharacteristics () ;
 int SaveTransactionCharacteristics () ;
 int StartSubTransaction () ;
 int StartTransaction () ;
 int elog (int ,char*,int ) ;

void
CommitTransactionCommand(void)
{
 TransactionState s = CurrentTransactionState;

 if (s->chain)
  SaveTransactionCharacteristics();

 switch (s->blockState)
 {






  case 143:
  case 139:
   elog(FATAL, "CommitTransactionCommand: unexpected state %s",
     BlockStateAsString(s->blockState));
   break;





  case 137:
   CommitTransaction();
   s->blockState = 143;
   break;







  case 144:
   s->blockState = 140;
   break;






  case 140:
  case 141:
  case 130:
   CommandCounterIncrement();
   break;





  case 142:
   CommitTransaction();
   s->blockState = 143;
   if (s->chain)
   {
    StartTransaction();
    s->blockState = 140;
    s->chain = 0;
    RestoreTransactionCharacteristics();
   }
   break;






  case 147:
  case 136:
   break;






  case 146:
   CleanupTransaction();
   s->blockState = 143;
   if (s->chain)
   {
    StartTransaction();
    s->blockState = 140;
    s->chain = 0;
    RestoreTransactionCharacteristics();
   }
   break;






  case 145:
   AbortTransaction();
   CleanupTransaction();
   s->blockState = 143;
   if (s->chain)
   {
    StartTransaction();
    s->blockState = 140;
    s->chain = 0;
    RestoreTransactionCharacteristics();
   }
   break;





  case 138:
   PrepareTransaction();
   s->blockState = 143;
   break;







  case 132:
   StartSubTransaction();
   s->blockState = 130;
   break;







  case 129:
   do
   {
    CommitSubTransaction();
    s = CurrentTransactionState;
   } while (s->blockState == 129);

   Assert(s->blockState == 140 ||
       s->blockState == 130);
   break;
  case 131:
   do
   {
    CommitSubTransaction();
    s = CurrentTransactionState;
   } while (s->blockState == 131);

   if (s->blockState == 142)
   {
    Assert(s->parent == ((void*)0));
    CommitTransaction();
    s->blockState = 143;
   }
   else if (s->blockState == 138)
   {
    Assert(s->parent == ((void*)0));
    PrepareTransaction();
    s->blockState = 143;
   }
   else
    elog(ERROR, "CommitTransactionCommand: unexpected state %s",
      BlockStateAsString(s->blockState));
   break;






  case 135:
   CleanupSubTransaction();
   CommitTransactionCommand();
   break;




  case 134:
   AbortSubTransaction();
   CleanupSubTransaction();
   CommitTransactionCommand();
   break;






  case 128:
   {
    char *name;
    int savepointLevel;


    name = s->name;
    s->name = ((void*)0);
    savepointLevel = s->savepointLevel;

    AbortSubTransaction();
    CleanupSubTransaction();

    DefineSavepoint(((void*)0));
    s = CurrentTransactionState;
    s->name = name;
    s->savepointLevel = savepointLevel;


    AssertState(s->blockState == 132);
    StartSubTransaction();
    s->blockState = 130;
   }
   break;





  case 133:
   {
    char *name;
    int savepointLevel;


    name = s->name;
    s->name = ((void*)0);
    savepointLevel = s->savepointLevel;

    CleanupSubTransaction();

    DefineSavepoint(((void*)0));
    s = CurrentTransactionState;
    s->name = name;
    s->savepointLevel = savepointLevel;


    AssertState(s->blockState == 132);
    StartSubTransaction();
    s->blockState = 130;
   }
   break;
 }
}
