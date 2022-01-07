
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ last_var; scalar_t__ T; } ;
typedef TYPE_1__ zend_op_array ;
typedef int zend_bitset ;
typedef scalar_t__ uint32_t ;


 int IS_CV ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ zend_bitset_in (int ,scalar_t__) ;
 int zend_dump_var (TYPE_1__ const*,int ,scalar_t__) ;

__attribute__((used)) static void zend_dump_var_set(const zend_op_array *op_array, const char *name, zend_bitset set)
{
 int first = 1;
 uint32_t i;

 fprintf(stderr, "    ; %s = {", name);
 for (i = 0; i < op_array->last_var + op_array->T; i++) {
  if (zend_bitset_in(set, i)) {
   if (first) {
    first = 0;
   } else {
    fprintf(stderr, ", ");
   }
   zend_dump_var(op_array, IS_CV, i);
  }
 }
 fprintf(stderr, "}\n");
}
