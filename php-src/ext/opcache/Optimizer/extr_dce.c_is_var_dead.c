
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int definition; scalar_t__ definition_phi; } ;
typedef TYPE_3__ zend_ssa_var ;
typedef int zend_bool ;
struct TYPE_9__ {TYPE_2__* op_array; int instr_dead; int phi_dead; TYPE_1__* ssa; } ;
typedef TYPE_4__ context ;
struct TYPE_7__ {int last_var; } ;
struct TYPE_6__ {TYPE_3__* vars; } ;


 int zend_bitset_in (int ,int) ;

__attribute__((used)) static inline zend_bool is_var_dead(context *ctx, int var_num) {
 zend_ssa_var *var = &ctx->ssa->vars[var_num];
 if (var->definition_phi) {
  return zend_bitset_in(ctx->phi_dead, var_num);
 } else if (var->definition >= 0) {
  return zend_bitset_in(ctx->instr_dead, var->definition);
 } else {



  return var_num >= ctx->op_array->last_var;
 }
}
