
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_7__ {int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_TYPE_CMOV ;
 int R_ANAL_OP_TYPE_MOV ;
 int R_ANAL_OP_TYPE_SWI ;
 int R_ANAL_OP_TYPE_TRAP ;
 int xtensa_rfei_op (int *,TYPE_1__*,int ,int const*) ;
 int xtensa_snm0_op (int *,TYPE_1__*,int ,int const*) ;
 int xtensa_sync_op (int *,TYPE_1__*,int ,int const*) ;
 int xtensa_unk_op (int *,TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void xtensa_st0_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 switch ((buf[1] >> 4) & 0xf) {
 case 0x0:
  xtensa_snm0_op (anal, op, addr, buf);
  break;
 case 0x1:
  op->type = R_ANAL_OP_TYPE_CMOV;
  break;
 case 0x2:
  xtensa_sync_op (anal, op, addr, buf);
  break;
 case 0x3:
  xtensa_rfei_op (anal, op, addr, buf);
  break;
 case 0x4:
  op->type = R_ANAL_OP_TYPE_TRAP;
  break;
 case 0x5: case 0x6: case 0x7:
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0x8: case 0x9: case 0xa: case 0xb:
  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 default:
  xtensa_unk_op (anal, op, addr, buf);
  break;
 }
}
