
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int reqs; int dataDumper; struct TYPE_14__* next; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_16__ {int tocCount; TYPE_1__* toc; } ;
struct TYPE_15__ {int numWorkers; } ;
typedef TYPE_2__ ParallelState ;
typedef TYPE_3__ ArchiveHandle ;


 int ACT_DUMP ;
 int DispatchJobForTocEntry (TYPE_3__*,TYPE_2__*,TYPE_1__*,int ,int ,int *) ;
 int REQ_DATA ;
 int TocEntrySizeCompare ;
 int WFW_ALL_IDLE ;
 int WaitForWorkers (TYPE_3__*,TYPE_2__*,int ) ;
 int WriteDataChunksForTocEntry (TYPE_3__*,TYPE_1__*) ;
 int mark_dump_job_done ;
 int pg_free (TYPE_1__**) ;
 scalar_t__ pg_malloc (int) ;
 int qsort (void*,int,int,int ) ;

void
WriteDataChunks(ArchiveHandle *AH, ParallelState *pstate)
{
 TocEntry *te;

 if (pstate && pstate->numWorkers > 1)
 {







  TocEntry **tes;
  int ntes;

  tes = (TocEntry **) pg_malloc(AH->tocCount * sizeof(TocEntry *));
  ntes = 0;
  for (te = AH->toc->next; te != AH->toc; te = te->next)
  {

   if (!te->dataDumper)
    continue;

   if ((te->reqs & REQ_DATA) == 0)
    continue;

   tes[ntes++] = te;
  }

  if (ntes > 1)
   qsort((void *) tes, ntes, sizeof(TocEntry *),
      TocEntrySizeCompare);

  for (int i = 0; i < ntes; i++)
   DispatchJobForTocEntry(AH, pstate, tes[i], ACT_DUMP,
           mark_dump_job_done, ((void*)0));

  pg_free(tes);


  WaitForWorkers(AH, pstate, WFW_ALL_IDLE);
 }
 else
 {

  for (te = AH->toc->next; te != AH->toc; te = te->next)
  {

   if (!te->dataDumper)
    continue;
   if ((te->reqs & REQ_DATA) == 0)
    continue;

   WriteDataChunksForTocEntry(AH, te);
  }
 }
}
