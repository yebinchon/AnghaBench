
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_3__ {int op_arrays_count; } ;
typedef TYPE_1__ zend_call_graph ;


 int SUCCESS ;

__attribute__((used)) static int zend_op_array_calc(zend_call_graph *call_graph, zend_op_array *op_array)
{
 (void) op_array;

 call_graph->op_arrays_count++;
 return SUCCESS;
}
