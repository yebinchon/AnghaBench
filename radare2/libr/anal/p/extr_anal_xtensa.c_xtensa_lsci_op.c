
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_6__ {int family; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_FAMILY_FPU ;
 int xtensa_load_op (int *,TYPE_1__*,int ,int const*) ;
 int xtensa_store_op (int *,TYPE_1__*,int ,int const*) ;
 int xtensa_unk_op (int *,TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void xtensa_lsci_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 ut8 r = buf[1] >> 4;
 op->family = R_ANAL_OP_FAMILY_FPU;
 if ((r & 3) == 0) {
  if (r & 4) {
   xtensa_store_op (anal, op, addr, buf);
  } else {
   xtensa_load_op (anal, op, addr, buf);
  }
 } else {
  xtensa_unk_op (anal, op, addr, buf);
 }
}
