
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int csh ;
typedef int cs_insn ;
struct TYPE_4__ {int type; int * src; int dst; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int CREATE_SRC_DST (TYPE_1__*) ;






 int R_ANAL_OP_TYPE_MASK ;




 int R_ANAL_OP_TYPE_REG ;
 int set_src_dst (int ,int *,int *,int) ;

__attribute__((used)) static void op_fillval(RAnal *a, RAnalOp *op, csh *handle, cs_insn *insn) {
 switch (op->type & R_ANAL_OP_TYPE_MASK) {
 case 141:
 case 143:
 case 142:
 case 144:
 case 133:
 case 132:
 case 135:
 case 134:
 case 137:
 case 136:
 case 146:
 case 145:
 case 139:
 case 128:
 case 131:
 case 129:
 case 138:
 case 140:
 case 147:
  CREATE_SRC_DST (op);
  set_src_dst (op->dst, handle, insn, 0);
  set_src_dst (op->src[0], handle, insn, 1);
  set_src_dst (op->src[1], handle, insn, 2);
  set_src_dst (op->src[2], handle, insn, 3);
  break;
 case 130:
  if ((op->type & R_ANAL_OP_TYPE_REG)) {
   CREATE_SRC_DST (op);
   set_src_dst (op->src[0], handle, insn, 0);
  }
  break;
 default:
  break;
 }
}
