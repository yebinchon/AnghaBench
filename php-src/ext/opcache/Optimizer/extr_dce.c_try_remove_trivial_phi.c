
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pi; int ssa_var; } ;
typedef TYPE_1__ zend_ssa_phi ;
typedef int zend_ssa ;
struct TYPE_8__ {int * ssa; } ;
typedef TYPE_2__ context ;


 int get_common_phi_source (int *,TYPE_1__*) ;
 int zend_ssa_remove_phi (int *,TYPE_1__*) ;
 int zend_ssa_rename_var_uses (int *,int ,int,int) ;

__attribute__((used)) static void try_remove_trivial_phi(context *ctx, zend_ssa_phi *phi) {
 zend_ssa *ssa = ctx->ssa;
 if (phi->pi < 0) {

  int common_source = get_common_phi_source(ssa, phi);
  if (common_source >= 0) {
   zend_ssa_rename_var_uses(ssa, phi->ssa_var, common_source, 1);
   zend_ssa_remove_phi(ssa, phi);
  }
 } else {







 }
}
