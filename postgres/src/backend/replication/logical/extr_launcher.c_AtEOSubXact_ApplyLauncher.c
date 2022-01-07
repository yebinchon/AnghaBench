
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nestDepth; int workers; struct TYPE_4__* parent; } ;
typedef TYPE_1__ StopWorkersData ;


 int Assert (int) ;
 int list_concat (int ,int ) ;
 int list_free_deep (int ) ;
 TYPE_1__* on_commit_stop_workers ;
 int pfree (TYPE_1__*) ;

void
AtEOSubXact_ApplyLauncher(bool isCommit, int nestDepth)
{
 StopWorkersData *parent;


 if (on_commit_stop_workers == ((void*)0) ||
  on_commit_stop_workers->nestDepth < nestDepth)
  return;

 Assert(on_commit_stop_workers->nestDepth == nestDepth);

 parent = on_commit_stop_workers->parent;

 if (isCommit)
 {






  if (!parent || parent->nestDepth < nestDepth - 1)
  {
   on_commit_stop_workers->nestDepth--;
   return;
  }

  parent->workers =
   list_concat(parent->workers, on_commit_stop_workers->workers);
 }
 else
 {




  list_free_deep(on_commit_stop_workers->workers);
 }





 pfree(on_commit_stop_workers);
 on_commit_stop_workers = parent;
}
