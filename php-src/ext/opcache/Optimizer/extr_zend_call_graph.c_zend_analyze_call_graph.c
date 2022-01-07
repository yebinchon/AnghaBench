
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_script ;
struct TYPE_5__ {int op_arrays_count; scalar_t__ func_infos; int * op_arrays; } ;
typedef TYPE_1__ zend_call_graph ;
typedef int zend_arena ;


 int zend_analyze_calls (int **,int *,int ,int ,scalar_t__) ;
 int zend_analyze_recursion (TYPE_1__*) ;
 int zend_sort_op_arrays (TYPE_1__*) ;

void zend_analyze_call_graph(zend_arena **arena, zend_script *script, zend_call_graph *call_graph)
{
 int i;

 for (i = 0; i < call_graph->op_arrays_count; i++) {
  zend_analyze_calls(arena, script, 0, call_graph->op_arrays[i], call_graph->func_infos + i);
 }
 zend_analyze_recursion(call_graph);
 zend_sort_op_arrays(call_graph);
}
