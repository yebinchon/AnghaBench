
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DestroyParallelContext (int) ;
 int ParallelContext ;
 int WARNING ;
 int dlist_head_element (int,int ,int *) ;
 int dlist_is_empty (int *) ;
 int elog (int ,char*) ;
 int node ;
 int pcxt ;
 int pcxt_list ;

void
AtEOXact_Parallel(bool isCommit)
{
 while (!dlist_is_empty(&pcxt_list))
 {
  ParallelContext *pcxt;

  pcxt = dlist_head_element(ParallelContext, node, &pcxt_list);
  if (isCommit)
   elog(WARNING, "leaked parallel context");
  DestroyParallelContext(pcxt);
 }
}
