
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int last_var; } ;
typedef TYPE_1__ zend_op_array ;


 int IS_CV ;
 int fprintf (int ,char*) ;
 int stderr ;
 int zend_dump_op_array_name (TYPE_1__ const*) ;
 int zend_dump_var (TYPE_1__ const*,int ,int) ;

void zend_dump_variables(const zend_op_array *op_array)
{
 int j;

 fprintf(stderr, "\nCV Variables for \"");
 zend_dump_op_array_name(op_array);
 fprintf(stderr, "\"\n");
 for (j = 0; j < op_array->last_var; j++) {
  fprintf(stderr, "    ");
  zend_dump_var(op_array, IS_CV, j);
  fprintf(stderr, "\n");
 }
}
