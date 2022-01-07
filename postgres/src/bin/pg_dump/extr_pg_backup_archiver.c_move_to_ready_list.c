
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ depCount; struct TYPE_6__* pending_next; } ;
typedef TYPE_1__ TocEntry ;
typedef scalar_t__ RestorePass ;
typedef int ParallelReadyList ;


 scalar_t__ _tocEntryRestorePass (TYPE_1__*) ;
 int pending_list_remove (TYPE_1__*) ;
 int ready_list_insert (int *,TYPE_1__*) ;

__attribute__((used)) static void
move_to_ready_list(TocEntry *pending_list,
       ParallelReadyList *ready_list,
       RestorePass pass)
{
 TocEntry *te;
 TocEntry *next_te;

 for (te = pending_list->pending_next; te != pending_list; te = next_te)
 {

  next_te = te->pending_next;

  if (te->depCount == 0 &&
   _tocEntryRestorePass(te) == pass)
  {

   pending_list_remove(te);

   ready_list_insert(ready_list, te);
  }
 }
}
