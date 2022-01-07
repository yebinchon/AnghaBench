
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {void* type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* R_ANAL_OP_TYPE_IO ;
 void* R_ANAL_OP_TYPE_NULL ;
 void* R_ANAL_OP_TYPE_SWI ;
 int xtensa_unk_op (int *,TYPE_1__*,int ,int const*) ;

__attribute__((used)) static void xtensa_st1_op (RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf) {
 switch ((buf[1] >> 4) & 0xf) {
 case 0x0: case 0x1: case 0x2: case 0x3:
 case 0x4:

  op->type = R_ANAL_OP_TYPE_NULL;

  break;
 case 0x6: case 0x7:
  op->type = R_ANAL_OP_TYPE_IO;

  break;
 case 0x8:
  op->type = R_ANAL_OP_TYPE_SWI;
  break;
 case 0xe: case 0xf:
  op->type = R_ANAL_OP_TYPE_NULL;
  break;
 default:
  xtensa_unk_op (anal, op, addr, buf);
  break;
 }
}
