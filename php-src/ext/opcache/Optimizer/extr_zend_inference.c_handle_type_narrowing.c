
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* vars; } ;
typedef TYPE_2__ zend_ssa ;
struct TYPE_11__ {TYPE_4__* opcodes; } ;
typedef TYPE_3__ zend_op_array ;
struct TYPE_12__ {int opcode; } ;
typedef TYPE_4__ zend_op ;
typedef int zend_bitset ;
typedef int uint32_t ;
struct TYPE_9__ {int definition; } ;


 int E_WARNING ;
 int reset_dependent_vars (TYPE_3__ const*,TYPE_2__*,int ,int) ;
 int zend_error (int ,char*,char const*) ;
 char* zend_get_opcode_name (int ) ;

__attribute__((used)) static void handle_type_narrowing(const zend_op_array *op_array, zend_ssa *ssa, zend_bitset worklist, int var, uint32_t old_type, uint32_t new_type)
{
 if (1) {

  int def_op_num = ssa->vars[var].definition;
  const zend_op *def_opline = def_op_num >= 0 ? &op_array->opcodes[def_op_num] : ((void*)0);
  const char *def_op_name = def_opline ? zend_get_opcode_name(def_opline->opcode) : "PHI";
  zend_error(E_WARNING, "Narrowing occurred during type inference of %s. Please file a bug report on bugs.php.net", def_op_name);
 } else {





  reset_dependent_vars(op_array, ssa, worklist, var);
 }
}
