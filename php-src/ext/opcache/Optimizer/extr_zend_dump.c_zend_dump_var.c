
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_uchar ;
struct TYPE_5__ {int last_var; TYPE_1__** vars; } ;
typedef TYPE_2__ zend_op_array ;
struct TYPE_4__ {char* val; } ;


 int IS_CV ;
 int IS_TMP_VAR ;
 int IS_VAR ;
 int fprintf (int ,char*,int,...) ;
 int stderr ;

void zend_dump_var(const zend_op_array *op_array, zend_uchar var_type, int var_num)
{
 if (var_type == IS_CV && var_num < op_array->last_var) {
  fprintf(stderr, "CV%d($%s)", var_num, op_array->vars[var_num]->val);
 } else if (var_type == IS_VAR) {
  fprintf(stderr, "V%d", var_num);
 } else if ((var_type & (IS_VAR|IS_TMP_VAR)) == IS_TMP_VAR) {
  fprintf(stderr, "T%d", var_num);
 } else {
  fprintf(stderr, "X%d", var_num);
 }
}
