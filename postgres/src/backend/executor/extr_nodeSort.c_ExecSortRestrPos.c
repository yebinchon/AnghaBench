
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tuplesortstate ;
struct TYPE_3__ {scalar_t__ tuplesortstate; int sort_Done; } ;
typedef TYPE_1__ SortState ;


 int tuplesort_restorepos (int *) ;

void
ExecSortRestrPos(SortState *node)
{



 if (!node->sort_Done)
  return;




 tuplesort_restorepos((Tuplesortstate *) node->tuplesortstate);
}
