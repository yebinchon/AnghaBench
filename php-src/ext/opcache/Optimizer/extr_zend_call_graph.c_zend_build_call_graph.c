
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_script ;
typedef int zend_op_array ;
typedef int zend_func_info ;
struct TYPE_4__ {scalar_t__ op_arrays_count; int * func_infos; int ** op_arrays; } ;
typedef TYPE_1__ zend_call_graph ;
typedef int zend_arena ;


 int FAILURE ;
 scalar_t__ SUCCESS ;
 scalar_t__ zend_arena_calloc (int **,scalar_t__,int) ;
 scalar_t__ zend_foreach_op_array (TYPE_1__*,int *,int ) ;
 int zend_op_array_calc ;
 int zend_op_array_collect ;

int zend_build_call_graph(zend_arena **arena, zend_script *script, zend_call_graph *call_graph)
{
 call_graph->op_arrays_count = 0;
 if (zend_foreach_op_array(call_graph, script, zend_op_array_calc) != SUCCESS) {
  return FAILURE;
 }
 call_graph->op_arrays = (zend_op_array**)zend_arena_calloc(arena, call_graph->op_arrays_count, sizeof(zend_op_array*));
 call_graph->func_infos = (zend_func_info*)zend_arena_calloc(arena, call_graph->op_arrays_count, sizeof(zend_func_info));
 call_graph->op_arrays_count = 0;
 if (zend_foreach_op_array(call_graph, script, zend_op_array_collect) != SUCCESS) {
  return FAILURE;
 }

 return SUCCESS;
}
