
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_3__ {int sorted; int last_te; int first_te; int tes; } ;
typedef TYPE_1__ ParallelReadyList ;


 int TocEntrySizeCompare ;
 int qsort (int,int,int,int ) ;

__attribute__((used)) static void
ready_list_sort(ParallelReadyList *ready_list)
{
 if (!ready_list->sorted)
 {
  int n = ready_list->last_te - ready_list->first_te + 1;

  if (n > 1)
   qsort(ready_list->tes + ready_list->first_te, n,
      sizeof(TocEntry *),
      TocEntrySizeCompare);
  ready_list->sorted = 1;
 }
}
