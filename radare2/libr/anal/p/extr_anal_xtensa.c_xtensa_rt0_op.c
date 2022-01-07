
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


 int R_ANAL_OP_TYPE_MOV ;
 int R_ANAL_OP_TYPE_NOT ;
 int xtensa_unk_op (int *,TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void xtensa_rt0_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 switch (buf[1] & 0xf) {
 case 0:
  op->type = R_ANAL_OP_TYPE_NOT;
  break;
 case 1:

  op->type = R_ANAL_OP_TYPE_MOV;
  break;
 default:
  xtensa_unk_op (anal, op, addr, buf);
  break;
 }
}
