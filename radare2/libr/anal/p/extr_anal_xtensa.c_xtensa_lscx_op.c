
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

__attribute__((used)) static void xtensa_lscx_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 op->family = R_ANAL_OP_FAMILY_FPU;
 switch ((buf[2] >> 4) & 0xf) {
 case 0x0: case 0x1:
  xtensa_load_op (anal, op, addr, buf);
  break;
 case 0x4: case 0x5:
  xtensa_store_op (anal, op, addr, buf);
  break;
 default:
  xtensa_unk_op (anal, op, addr, buf);
  break;
 }
}
