
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nworkers_launched; struct TYPE_5__* function_name; struct TYPE_5__* library_name; struct TYPE_5__* worker; struct TYPE_5__* private_memory; int * seg; int * error_mqh; int bgwhandle; int node; } ;
typedef TYPE_1__ ParallelContext ;


 int HOLD_INTERRUPTS () ;
 int RESUME_INTERRUPTS () ;
 int TerminateBackgroundWorker (int ) ;
 int WaitForParallelWorkersToExit (TYPE_1__*) ;
 int dlist_delete (int *) ;
 int dsm_detach (int *) ;
 int pfree (TYPE_1__*) ;
 int shm_mq_detach (int *) ;

void
DestroyParallelContext(ParallelContext *pcxt)
{
 int i;







 dlist_delete(&pcxt->node);


 if (pcxt->worker != ((void*)0))
 {
  for (i = 0; i < pcxt->nworkers_launched; ++i)
  {
   if (pcxt->worker[i].error_mqh != ((void*)0))
   {
    TerminateBackgroundWorker(pcxt->worker[i].bgwhandle);

    shm_mq_detach(pcxt->worker[i].error_mqh);
    pcxt->worker[i].error_mqh = ((void*)0);
   }
  }
 }






 if (pcxt->seg != ((void*)0))
 {
  dsm_detach(pcxt->seg);
  pcxt->seg = ((void*)0);
 }





 if (pcxt->private_memory != ((void*)0))
 {
  pfree(pcxt->private_memory);
  pcxt->private_memory = ((void*)0);
 }






 HOLD_INTERRUPTS();
 WaitForParallelWorkersToExit(pcxt);
 RESUME_INTERRUPTS();


 if (pcxt->worker != ((void*)0))
 {
  pfree(pcxt->worker);
  pcxt->worker = ((void*)0);
 }


 pfree(pcxt->library_name);
 pfree(pcxt->function_name);
 pfree(pcxt);
}
