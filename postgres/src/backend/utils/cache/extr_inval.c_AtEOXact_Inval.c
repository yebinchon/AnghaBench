
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int my_level; int PriorCmdInvalidMsgs; scalar_t__ RelcacheInitFileInval; int CurrentCmdInvalidMsgs; int * parent; } ;


 int AppendInvalidationMessages (int *,int *) ;
 int Assert (int) ;
 int LocalExecuteInvalidationMessage ;
 int ProcessInvalidationMessages (int *,int ) ;
 int ProcessInvalidationMessagesMulti (int *,int ) ;
 int RelationCacheInitFilePostInvalidate () ;
 int RelationCacheInitFilePreInvalidate () ;
 int SendSharedInvalidMessages ;
 int * SharedInvalidMessagesArray ;
 scalar_t__ numSharedInvalidMessagesArray ;
 TYPE_1__* transInvalInfo ;

void
AtEOXact_Inval(bool isCommit)
{

 if (transInvalInfo == ((void*)0))
  return;


 Assert(transInvalInfo->my_level == 1 && transInvalInfo->parent == ((void*)0));

 if (isCommit)
 {





  if (transInvalInfo->RelcacheInitFileInval)
   RelationCacheInitFilePreInvalidate();

  AppendInvalidationMessages(&transInvalInfo->PriorCmdInvalidMsgs,
           &transInvalInfo->CurrentCmdInvalidMsgs);

  ProcessInvalidationMessagesMulti(&transInvalInfo->PriorCmdInvalidMsgs,
           SendSharedInvalidMessages);

  if (transInvalInfo->RelcacheInitFileInval)
   RelationCacheInitFilePostInvalidate();
 }
 else
 {
  ProcessInvalidationMessages(&transInvalInfo->PriorCmdInvalidMsgs,
         LocalExecuteInvalidationMessage);
 }


 transInvalInfo = ((void*)0);
 SharedInvalidMessagesArray = ((void*)0);
 numSharedInvalidMessagesArray = 0;
}
