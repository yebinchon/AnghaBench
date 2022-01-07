
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_3__ {int first_te; int last_te; int ** tes; } ;
typedef TYPE_1__ ParallelReadyList ;


 int Assert (int) ;
 int memmove (int **,int **,int) ;

__attribute__((used)) static void
ready_list_remove(ParallelReadyList *ready_list, int i)
{
 int f = ready_list->first_te;

 Assert(i >= f && i <= ready_list->last_te);
 if (i > f)
 {
  TocEntry **first_te_ptr = &ready_list->tes[f];

  memmove(first_te_ptr + 1, first_te_ptr, (i - f) * sizeof(TocEntry *));
 }
 ready_list->first_te++;
}
