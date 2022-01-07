
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_TYPE_ILL ;
 int R_ANAL_OP_TYPE_RET ;
 int R_ANAL_OP_TYPE_UCALL ;
 int R_ANAL_OP_TYPE_UJMP ;
 int xtensa_unk_op (int *,TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void xtensa_snm0_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 switch ((buf[0] >> 4) & 0xf) {
 case 0x0: case 0x1: case 0x2: case 0x3:
  op->type = R_ANAL_OP_TYPE_ILL;
  break;
 case 0x8: case 0x9:
  op->type = R_ANAL_OP_TYPE_RET;
  break;
 case 0xa:
  op->type = R_ANAL_OP_TYPE_UJMP;
  break;
 case 0xc: case 0xd: case 0xe: case 0xf:
  op->type = R_ANAL_OP_TYPE_UCALL;
  break;
 default:
  xtensa_unk_op (anal, op, addr, buf);
  break;
 }
}
