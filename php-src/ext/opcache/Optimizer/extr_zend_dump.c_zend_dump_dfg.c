
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_op_array ;
struct TYPE_5__ {int size; int out; int in; int use; int def; } ;
typedef TYPE_1__ zend_dfg ;
struct TYPE_6__ {int blocks_count; } ;
typedef TYPE_2__ zend_cfg ;


 int DFG_BITSET (int ,int ,int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int zend_dump_op_array_name (int const*) ;
 int zend_dump_var_set (int const*,char*,int ) ;

void zend_dump_dfg(const zend_op_array *op_array, const zend_cfg *cfg, const zend_dfg *dfg)
{
 int j;
 fprintf(stderr, "\nVariable Liveness for \"");
 zend_dump_op_array_name(op_array);
 fprintf(stderr, "\"\n");

 for (j = 0; j < cfg->blocks_count; j++) {
  fprintf(stderr, "  BB%d:\n", j);
  zend_dump_var_set(op_array, "def", DFG_BITSET(dfg->def, dfg->size, j));
  zend_dump_var_set(op_array, "use", DFG_BITSET(dfg->use, dfg->size, j));
  zend_dump_var_set(op_array, "in ", DFG_BITSET(dfg->in, dfg->size, j));
  zend_dump_var_set(op_array, "out", DFG_BITSET(dfg->out, dfg->size, j));
 }
}
