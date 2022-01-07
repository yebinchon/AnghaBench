
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type_mask; int * ce; } ;
struct TYPE_5__ {TYPE_2__ type; } ;
struct TYPE_7__ {TYPE_1__ constraint; scalar_t__ has_range_constraint; } ;
typedef TYPE_3__ zend_ssa_phi ;
typedef int uint32_t ;


 int MAY_BE_NULL ;
 int MAY_BE_RC1 ;
 int MAY_BE_RCN ;
 int MAY_BE_REF ;
 int MAY_BE_UNDEF ;

__attribute__((used)) static void pi_type_mask(zend_ssa_phi *phi, uint32_t type_mask) {
 phi->has_range_constraint = 0;
 phi->constraint.type.ce = ((void*)0);
 phi->constraint.type.type_mask = MAY_BE_REF|MAY_BE_RC1|MAY_BE_RCN;
 phi->constraint.type.type_mask |= type_mask;
 if (type_mask & MAY_BE_NULL) {
  phi->constraint.type.type_mask |= MAY_BE_UNDEF;
 }
}
