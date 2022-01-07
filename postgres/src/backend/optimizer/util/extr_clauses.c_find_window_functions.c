
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int maxWinRef; int ** windowFuncs; scalar_t__ numWindowFuncs; } ;
typedef TYPE_1__ WindowFuncLists ;
typedef int Node ;
typedef int List ;
typedef int Index ;


 int find_window_functions_walker (int *,TYPE_1__*) ;
 TYPE_1__* palloc (int) ;
 scalar_t__ palloc0 (int) ;

WindowFuncLists *
find_window_functions(Node *clause, Index maxWinRef)
{
 WindowFuncLists *lists = palloc(sizeof(WindowFuncLists));

 lists->numWindowFuncs = 0;
 lists->maxWinRef = maxWinRef;
 lists->windowFuncs = (List **) palloc0((maxWinRef + 1) * sizeof(List *));
 (void) find_window_functions_walker(clause, lists);
 return lists;
}
