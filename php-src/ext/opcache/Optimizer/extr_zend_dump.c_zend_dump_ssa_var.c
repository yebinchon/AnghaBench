
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_uchar ;
struct TYPE_11__ {TYPE_2__* var_info; TYPE_1__* vars; } ;
typedef TYPE_3__ zend_ssa ;
struct TYPE_12__ {int last_var; } ;
typedef TYPE_4__ zend_op_array ;
typedef int uint32_t ;
struct TYPE_10__ {int range; scalar_t__ has_range; } ;
struct TYPE_9__ {scalar_t__ escape_state; scalar_t__ no_val; } ;


 scalar_t__ ESCAPE_STATE_NO_ESCAPE ;
 int IS_CV ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int zend_dump_range (int *) ;
 int zend_dump_ssa_var_info (TYPE_3__ const*,int,int ) ;
 int zend_dump_var (TYPE_4__ const*,int ,int) ;

__attribute__((used)) static void zend_dump_ssa_var(const zend_op_array *op_array, const zend_ssa *ssa, int ssa_var_num, zend_uchar var_type, int var_num, uint32_t dump_flags)
{
 if (ssa_var_num >= 0) {
  fprintf(stderr, "#%d.", ssa_var_num);
 } else {
  fprintf(stderr, "#?.");
 }
 zend_dump_var(op_array, (var_num < op_array->last_var ? IS_CV : var_type), var_num);

 if (ssa_var_num >= 0 && ssa->vars) {
  if (ssa->vars[ssa_var_num].no_val) {
   fprintf(stderr, " NOVAL");
  }
  if (ssa->vars[ssa_var_num].escape_state == ESCAPE_STATE_NO_ESCAPE) {
   fprintf(stderr, " NOESC");
  }
  if (ssa->var_info) {
   zend_dump_ssa_var_info(ssa, ssa_var_num, dump_flags);
   if (ssa->var_info[ssa_var_num].has_range) {
    zend_dump_range(&ssa->var_info[ssa_var_num].range);
   }
  }
 }
}
