
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int buf ;
typedef int TocEntry ;
typedef scalar_t__ T_Action ;
struct TYPE_8__ {int (* WorkerJobDumpPtr ) (TYPE_1__*,int *) ;int (* WorkerJobRestorePtr ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ ArchiveHandle ;


 scalar_t__ ACT_DUMP ;
 scalar_t__ ACT_RESTORE ;
 int Assert (int) ;
 int buildWorkerResponse (TYPE_1__*,int *,scalar_t__,int,char*,int) ;
 int free (char*) ;
 char* getMessageFromMaster (int*) ;
 int lockTableForWorker (TYPE_1__*,int *) ;
 int parseWorkerCommand (TYPE_1__*,int **,scalar_t__*,char*) ;
 int sendMessageToMaster (int*,char*) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void
WaitForCommands(ArchiveHandle *AH, int pipefd[2])
{
 char *command;
 TocEntry *te;
 T_Action act;
 int status = 0;
 char buf[256];

 for (;;)
 {
  if (!(command = getMessageFromMaster(pipefd)))
  {

   return;
  }


  parseWorkerCommand(AH, &te, &act, command);

  if (act == ACT_DUMP)
  {

   lockTableForWorker(AH, te);


   status = (AH->WorkerJobDumpPtr) (AH, te);
  }
  else if (act == ACT_RESTORE)
  {

   status = (AH->WorkerJobRestorePtr) (AH, te);
  }
  else
   Assert(0);


  buildWorkerResponse(AH, te, act, status, buf, sizeof(buf));

  sendMessageToMaster(pipefd, buf);


  free(command);
 }
}
