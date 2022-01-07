
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; int desc; int dumpId; } ;
typedef TYPE_1__ TocEntry ;
typedef int ArchiveHandle ;


 int fatal (char*,int) ;
 int pg_log_info (char*,int ,int ,int ) ;

__attribute__((used)) static void
mark_dump_job_done(ArchiveHandle *AH,
       TocEntry *te,
       int status,
       void *callback_data)
{
 pg_log_info("finished item %d %s %s",
    te->dumpId, te->desc, te->tag);

 if (status != 0)
  fatal("worker process failed: exit code %d",
     status);
}
