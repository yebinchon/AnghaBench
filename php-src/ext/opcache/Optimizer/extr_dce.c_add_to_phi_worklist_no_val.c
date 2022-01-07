
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ definition_phi; } ;
typedef TYPE_2__ zend_ssa_var ;
struct TYPE_7__ {int phi_worklist_no_val; int phi_dead; TYPE_1__* ssa; } ;
typedef TYPE_3__ context ;
struct TYPE_5__ {TYPE_2__* vars; } ;


 scalar_t__ zend_bitset_in (int ,int) ;
 int zend_bitset_incl (int ,int) ;

__attribute__((used)) static inline void add_to_phi_worklist_no_val(context *ctx, int var_num) {
 zend_ssa_var *var = &ctx->ssa->vars[var_num];
 if (var->definition_phi && zend_bitset_in(ctx->phi_dead, var_num)) {
  zend_bitset_incl(ctx->phi_worklist_no_val, var_num);
 }
}
