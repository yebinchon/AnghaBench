
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int public; int (* SetupWorkerPtr ) (int *) ;} ;
struct TYPE_11__ {int pipeRevRead; int pipeRevWrite; } ;
typedef TYPE_1__ ParallelSlot ;
typedef TYPE_2__ ArchiveHandle ;
typedef int Archive ;


 TYPE_2__* CloneArchive (TYPE_2__*) ;
 int DeCloneArchive (TYPE_2__*) ;
 int DisconnectDatabase (int *) ;
 size_t PIPE_READ ;
 size_t PIPE_WRITE ;
 int WaitForCommands (TYPE_2__*,int*) ;
 int set_cancel_slot_archive (TYPE_1__*,TYPE_2__*) ;
 int stub1 (int *) ;

__attribute__((used)) static void
RunWorker(ArchiveHandle *AH, ParallelSlot *slot)
{
 int pipefd[2];


 pipefd[PIPE_READ] = slot->pipeRevRead;
 pipefd[PIPE_WRITE] = slot->pipeRevWrite;
 AH = CloneArchive(AH);


 set_cancel_slot_archive(slot, AH);




 (AH->SetupWorkerPtr) ((Archive *) AH);




 WaitForCommands(AH, pipefd);




 set_cancel_slot_archive(slot, ((void*)0));
 DisconnectDatabase(&(AH->public));
 DeCloneArchive(AH);
}
