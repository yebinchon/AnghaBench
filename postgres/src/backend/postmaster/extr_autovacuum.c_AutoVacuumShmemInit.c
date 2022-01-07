
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* WorkerInfo ;
struct TYPE_5__ {int av_freeWorkers; int av_workItems; int * av_startingWorker; int av_runningWorkers; scalar_t__ av_launcherpid; } ;
struct TYPE_4__ {int wi_links; } ;
typedef int AutoVacuumWorkItem ;
typedef TYPE_2__ AutoVacuumShmemStruct ;


 int Assert (int) ;
 TYPE_2__* AutoVacuumShmem ;
 int AutoVacuumShmemSize () ;
 int IsUnderPostmaster ;
 int MAXALIGN (int) ;
 int NUM_WORKITEMS ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int autovacuum_max_workers ;
 int dlist_init (int *) ;
 int dlist_push_head (int *,int *) ;
 int memset (int ,int ,int) ;

void
AutoVacuumShmemInit(void)
{
 bool found;

 AutoVacuumShmem = (AutoVacuumShmemStruct *)
  ShmemInitStruct("AutoVacuum Data",
      AutoVacuumShmemSize(),
      &found);

 if (!IsUnderPostmaster)
 {
  WorkerInfo worker;
  int i;

  Assert(!found);

  AutoVacuumShmem->av_launcherpid = 0;
  dlist_init(&AutoVacuumShmem->av_freeWorkers);
  dlist_init(&AutoVacuumShmem->av_runningWorkers);
  AutoVacuumShmem->av_startingWorker = ((void*)0);
  memset(AutoVacuumShmem->av_workItems, 0,
      sizeof(AutoVacuumWorkItem) * NUM_WORKITEMS);

  worker = (WorkerInfo) ((char *) AutoVacuumShmem +
          MAXALIGN(sizeof(AutoVacuumShmemStruct)));


  for (i = 0; i < autovacuum_max_workers; i++)
   dlist_push_head(&AutoVacuumShmem->av_freeWorkers,
       &worker[i].wi_links);
 }
 else
  Assert(found);
}
