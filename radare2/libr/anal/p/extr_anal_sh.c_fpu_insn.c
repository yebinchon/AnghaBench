
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut16 ;
struct TYPE_3__ {int size; int family; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_FAMILY_FPU ;

__attribute__((used)) static int fpu_insn(RAnal* anal, RAnalOp* op, ut16 code) {

 op->family = R_ANAL_OP_FAMILY_FPU;
 return op->size;
}
