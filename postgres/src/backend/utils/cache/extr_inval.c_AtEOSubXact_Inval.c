
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int my_level; int RelcacheInitFileInval; struct TYPE_4__* parent; int PriorCmdInvalidMsgs; } ;
typedef TYPE_1__ TransInvalidationInfo ;


 int AppendInvalidationMessages (int *,int *) ;
 int Assert (int) ;
 int CommandEndInvalidationMessages () ;
 int GetCurrentTransactionNestLevel () ;
 int LocalExecuteInvalidationMessage ;
 int ProcessInvalidationMessages (int *,int ) ;
 int pfree (TYPE_1__*) ;
 TYPE_1__* transInvalInfo ;

void
AtEOSubXact_Inval(bool isCommit)
{
 int my_level;
 TransInvalidationInfo *myInfo = transInvalInfo;


 if (myInfo == ((void*)0))
  return;


 my_level = GetCurrentTransactionNestLevel();
 if (myInfo->my_level != my_level)
 {
  Assert(myInfo->my_level < my_level);
  return;
 }

 if (isCommit)
 {

  CommandEndInvalidationMessages();







  if (myInfo->parent == ((void*)0) || myInfo->parent->my_level < my_level - 1)
  {
   myInfo->my_level--;
   return;
  }


  AppendInvalidationMessages(&myInfo->parent->PriorCmdInvalidMsgs,
           &myInfo->PriorCmdInvalidMsgs);


  if (myInfo->RelcacheInitFileInval)
   myInfo->parent->RelcacheInitFileInval = 1;


  transInvalInfo = myInfo->parent;


  pfree(myInfo);
 }
 else
 {
  ProcessInvalidationMessages(&myInfo->PriorCmdInvalidMsgs,
         LocalExecuteInvalidationMessage);


  transInvalInfo = myInfo->parent;


  pfree(myInfo);
 }
}
