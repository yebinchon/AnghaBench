
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_8__ {int first_te; int last_te; int ** tes; } ;
struct TYPE_7__ {int numWorkers; int ** te; } ;
typedef TYPE_1__ ParallelState ;
typedef TYPE_2__ ParallelReadyList ;
typedef int ArchiveHandle ;


 scalar_t__ has_lock_conflicts (int *,int *) ;
 int pg_log_debug (char*) ;
 int ready_list_remove (TYPE_2__*,int) ;
 int ready_list_sort (TYPE_2__*) ;

__attribute__((used)) static TocEntry *
pop_next_work_item(ArchiveHandle *AH, ParallelReadyList *ready_list,
       ParallelState *pstate)
{



 ready_list_sort(ready_list);




 for (int i = ready_list->first_te; i <= ready_list->last_te; i++)
 {
  TocEntry *te = ready_list->tes[i];
  bool conflicts = 0;






  for (int k = 0; k < pstate->numWorkers; k++)
  {
   TocEntry *running_te = pstate->te[k];

   if (running_te == ((void*)0))
    continue;
   if (has_lock_conflicts(te, running_te) ||
    has_lock_conflicts(running_te, te))
   {
    conflicts = 1;
    break;
   }
  }

  if (conflicts)
   continue;


  ready_list_remove(ready_list, i);
  return te;
 }

 pg_log_debug("no item ready");
 return ((void*)0);
}
