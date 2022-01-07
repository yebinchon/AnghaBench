
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vars_count; TYPE_1__* vars; } ;
typedef TYPE_2__ zend_ssa ;
typedef int zend_op_array ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ scc; scalar_t__ scc_entry; int var; } ;


 int IS_CV ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int zend_dump_op_array_name (int const*) ;
 int zend_dump_ssa_var (int const*,TYPE_2__ const*,int,int ,int ,int ) ;

void zend_dump_ssa_variables(const zend_op_array *op_array, const zend_ssa *ssa, uint32_t dump_flags)
{
 int j;

 if (ssa->vars) {
  fprintf(stderr, "\nSSA Variable for \"");
  zend_dump_op_array_name(op_array);
  fprintf(stderr, "\"\n");

  for (j = 0; j < ssa->vars_count; j++) {
   fprintf(stderr, "    ");
   zend_dump_ssa_var(op_array, ssa, j, IS_CV, ssa->vars[j].var, dump_flags);
   if (ssa->vars[j].scc >= 0) {
    if (ssa->vars[j].scc_entry) {
     fprintf(stderr, " *");
    } else {
     fprintf(stderr, "  ");
    }
    fprintf(stderr, "SCC=%d", ssa->vars[j].scc);
   }
   fprintf(stderr, "\n");
  }
 }
}
