
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nworkers; int node; int estimator; int error_context_stack; void* function_name; void* library_name; int subid; } ;
typedef TYPE_1__ ParallelContext ;
typedef int MemoryContext ;


 int Assert (int) ;
 int GetCurrentSubTransactionId () ;
 int IsInParallelMode () ;
 int MemoryContextSwitchTo (int ) ;
 int TopTransactionContext ;
 int dlist_push_head (int *,int *) ;
 int error_context_stack ;
 TYPE_1__* palloc0 (int) ;
 int pcxt_list ;
 void* pstrdup (char const*) ;
 int shm_toc_initialize_estimator (int *) ;

ParallelContext *
CreateParallelContext(const char *library_name, const char *function_name,
       int nworkers)
{
 MemoryContext oldcontext;
 ParallelContext *pcxt;


 Assert(IsInParallelMode());


 Assert(nworkers >= 0);


 oldcontext = MemoryContextSwitchTo(TopTransactionContext);


 pcxt = palloc0(sizeof(ParallelContext));
 pcxt->subid = GetCurrentSubTransactionId();
 pcxt->nworkers = nworkers;
 pcxt->library_name = pstrdup(library_name);
 pcxt->function_name = pstrdup(function_name);
 pcxt->error_context_stack = error_context_stack;
 shm_toc_initialize_estimator(&pcxt->estimator);
 dlist_push_head(&pcxt_list, &pcxt->node);


 MemoryContextSwitchTo(oldcontext);

 return pcxt;
}
