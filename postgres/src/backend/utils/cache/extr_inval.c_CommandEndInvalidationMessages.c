
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CurrentCmdInvalidMsgs; int PriorCmdInvalidMsgs; } ;


 int AppendInvalidationMessages (int *,int *) ;
 int LocalExecuteInvalidationMessage ;
 int ProcessInvalidationMessages (int *,int ) ;
 TYPE_1__* transInvalInfo ;

void
CommandEndInvalidationMessages(void)
{





 if (transInvalInfo == ((void*)0))
  return;

 ProcessInvalidationMessages(&transInvalInfo->CurrentCmdInvalidMsgs,
        LocalExecuteInvalidationMessage);
 AppendInvalidationMessages(&transInvalInfo->PriorCmdInvalidMsgs,
          &transInvalInfo->CurrentCmdInvalidMsgs);
}
