
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int reqs; int tag; int desc; int dumpId; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_22__ {int restorePass; int tocCount; } ;
struct TYPE_21__ {scalar_t__ first_te; scalar_t__ last_te; } ;
typedef int ParallelState ;
typedef TYPE_2__ ParallelReadyList ;
typedef TYPE_3__ ArchiveHandle ;


 int ACT_RESTORE ;
 int Assert (int) ;
 int DispatchJobForTocEntry (TYPE_3__*,int *,TYPE_1__*,int ,int ,TYPE_2__*) ;
 scalar_t__ IsEveryWorkerIdle (int *) ;
 int REQ_DATA ;
 int REQ_SCHEMA ;
 int RESTORE_PASS_LAST ;
 int RESTORE_PASS_MAIN ;
 int WFW_GOT_STATUS ;
 int WFW_ONE_IDLE ;
 int WaitForWorkers (TYPE_3__*,int *,int ) ;
 int mark_restore_job_done ;
 int move_to_ready_list (TYPE_1__*,TYPE_2__*,int ) ;
 int pg_log_debug (char*) ;
 int pg_log_info (char*,...) ;
 TYPE_1__* pop_next_work_item (TYPE_3__*,TYPE_2__*,int *) ;
 int ready_list_free (TYPE_2__*) ;
 int ready_list_init (TYPE_2__*,int ) ;
 int reduce_dependencies (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void
restore_toc_entries_parallel(ArchiveHandle *AH, ParallelState *pstate,
        TocEntry *pending_list)
{
 ParallelReadyList ready_list;
 TocEntry *next_work_item;

 pg_log_debug("entering restore_toc_entries_parallel");


 ready_list_init(&ready_list, AH->tocCount);
 AH->restorePass = RESTORE_PASS_MAIN;
 move_to_ready_list(pending_list, &ready_list, AH->restorePass);
 pg_log_info("entering main parallel loop");

 for (;;)
 {

  next_work_item = pop_next_work_item(AH, &ready_list, pstate);
  if (next_work_item != ((void*)0))
  {

   if ((next_work_item->reqs & (REQ_SCHEMA | REQ_DATA)) == 0)
   {
    pg_log_info("skipping item %d %s %s",
       next_work_item->dumpId,
       next_work_item->desc, next_work_item->tag);

    reduce_dependencies(AH, next_work_item, &ready_list);

    continue;
   }

   pg_log_info("launching item %d %s %s",
      next_work_item->dumpId,
      next_work_item->desc, next_work_item->tag);


   DispatchJobForTocEntry(AH, pstate, next_work_item, ACT_RESTORE,
           mark_restore_job_done, &ready_list);
  }
  else if (IsEveryWorkerIdle(pstate))
  {




   if (AH->restorePass == RESTORE_PASS_LAST)
    break;


   AH->restorePass++;

   move_to_ready_list(pending_list, &ready_list, AH->restorePass);

   continue;
  }
  else
  {




  }
  WaitForWorkers(AH, pstate,
        next_work_item ? WFW_ONE_IDLE : WFW_GOT_STATUS);
 }


 Assert(ready_list.first_te > ready_list.last_te);

 ready_list_free(&ready_list);

 pg_log_info("finished main parallel loop");
}
