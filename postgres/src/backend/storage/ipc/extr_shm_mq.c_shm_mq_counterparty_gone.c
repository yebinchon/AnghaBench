
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mq_detached; } ;
typedef TYPE_1__ shm_mq ;
typedef int pid_t ;
typedef scalar_t__ BgwHandleStatus ;
typedef int BackgroundWorkerHandle ;


 scalar_t__ BGWH_NOT_YET_STARTED ;
 scalar_t__ BGWH_STARTED ;
 scalar_t__ GetBackgroundWorkerPid (int *,int *) ;

__attribute__((used)) static bool
shm_mq_counterparty_gone(shm_mq *mq, BackgroundWorkerHandle *handle)
{
 pid_t pid;


 if (mq->mq_detached)
  return 1;


 if (handle != ((void*)0))
 {
  BgwHandleStatus status;


  status = GetBackgroundWorkerPid(handle, &pid);
  if (status != BGWH_STARTED && status != BGWH_NOT_YET_STARTED)
  {

   mq->mq_detached = 1;
   return 1;
  }
 }


 return 0;
}
