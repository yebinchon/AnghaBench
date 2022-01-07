
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_5__ {size_t num; int num_args; int return_value_used; } ;
typedef TYPE_1__ zend_func_info ;
struct TYPE_6__ {int op_arrays_count; int ** op_arrays; TYPE_1__* func_infos; } ;
typedef TYPE_2__ zend_call_graph ;


 int SUCCESS ;
 int ZEND_SET_FUNC_INFO (int *,TYPE_1__*) ;

__attribute__((used)) static int zend_op_array_collect(zend_call_graph *call_graph, zend_op_array *op_array)
{
    zend_func_info *func_info = call_graph->func_infos + call_graph->op_arrays_count;

 ZEND_SET_FUNC_INFO(op_array, func_info);
 call_graph->op_arrays[call_graph->op_arrays_count] = op_array;
 func_info->num = call_graph->op_arrays_count;
 func_info->num_args = -1;
 func_info->return_value_used = -1;
 call_graph->op_arrays_count++;
 return SUCCESS;
}
