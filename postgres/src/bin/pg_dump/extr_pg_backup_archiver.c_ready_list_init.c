
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_3__ {int last_te; int sorted; scalar_t__ first_te; int ** tes; } ;
typedef TYPE_1__ ParallelReadyList ;


 scalar_t__ pg_malloc (int) ;

__attribute__((used)) static void
ready_list_init(ParallelReadyList *ready_list, int tocCount)
{
 ready_list->tes = (TocEntry **)
  pg_malloc(tocCount * sizeof(TocEntry *));
 ready_list->first_te = 0;
 ready_list->last_te = -1;
 ready_list->sorted = 0;
}
