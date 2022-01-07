
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int my_level; int RelcacheInitFileInval; int PriorCmdInvalidMsgs; int CurrentCmdInvalidMsgs; int * parent; } ;
typedef int SharedInvalidationMessage ;
typedef int MemoryContext ;


 int Assert (int) ;
 int CurTransactionContext ;
 int MakeSharedInvalidMessagesArray ;
 int MemoryContextSwitchTo (int ) ;
 int ProcessInvalidationMessagesMulti (int *,int ) ;
 int * SharedInvalidMessagesArray ;
 scalar_t__ numSharedInvalidMessagesArray ;
 TYPE_1__* transInvalInfo ;

int
xactGetCommittedInvalidationMessages(SharedInvalidationMessage **msgs,
          bool *RelcacheInitFileInval)
{
 MemoryContext oldcontext;


 if (transInvalInfo == ((void*)0))
 {
  *RelcacheInitFileInval = 0;
  *msgs = ((void*)0);
  return 0;
 }


 Assert(transInvalInfo->my_level == 1 && transInvalInfo->parent == ((void*)0));






 *RelcacheInitFileInval = transInvalInfo->RelcacheInitFileInval;
 oldcontext = MemoryContextSwitchTo(CurTransactionContext);

 ProcessInvalidationMessagesMulti(&transInvalInfo->CurrentCmdInvalidMsgs,
          MakeSharedInvalidMessagesArray);
 ProcessInvalidationMessagesMulti(&transInvalInfo->PriorCmdInvalidMsgs,
          MakeSharedInvalidMessagesArray);
 MemoryContextSwitchTo(oldcontext);

 Assert(!(numSharedInvalidMessagesArray > 0 &&
    SharedInvalidMessagesArray == ((void*)0)));

 *msgs = SharedInvalidMessagesArray;

 return numSharedInvalidMessagesArray;
}
