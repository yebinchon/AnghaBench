
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int tag; int desc; int dumpId; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_12__ {int n_errors; } ;
struct TYPE_14__ {TYPE_1__ public; } ;
typedef int ParallelReadyList ;
typedef TYPE_3__ ArchiveHandle ;


 int WORKER_CREATE_DONE ;
 int WORKER_IGNORED_ERRORS ;
 int WORKER_INHIBIT_DATA ;
 int fatal (char*,int) ;
 int inhibit_data_for_failed_table (TYPE_3__*,TYPE_2__*) ;
 int mark_create_done (TYPE_3__*,TYPE_2__*) ;
 int pg_log_info (char*,int ,int ,int ) ;
 int reduce_dependencies (TYPE_3__*,TYPE_2__*,int *) ;

__attribute__((used)) static void
mark_restore_job_done(ArchiveHandle *AH,
       TocEntry *te,
       int status,
       void *callback_data)
{
 ParallelReadyList *ready_list = (ParallelReadyList *) callback_data;

 pg_log_info("finished item %d %s %s",
    te->dumpId, te->desc, te->tag);

 if (status == WORKER_CREATE_DONE)
  mark_create_done(AH, te);
 else if (status == WORKER_INHIBIT_DATA)
 {
  inhibit_data_for_failed_table(AH, te);
  AH->public.n_errors++;
 }
 else if (status == WORKER_IGNORED_ERRORS)
  AH->public.n_errors++;
 else if (status != 0)
  fatal("worker process failed: exit code %d",
     status);

 reduce_dependencies(AH, te, ready_list);
}
