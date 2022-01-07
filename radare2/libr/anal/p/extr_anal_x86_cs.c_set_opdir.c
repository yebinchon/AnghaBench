
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cs_insn ;
struct TYPE_5__ {int const type; } ;
struct TYPE_4__ {int type; int direction; } ;
typedef TYPE_1__ RAnalOp ;


 TYPE_3__ INSOP (int) ;
 int R_ANAL_OP_DIR_EXEC ;
 int R_ANAL_OP_DIR_READ ;
 int R_ANAL_OP_DIR_REF ;
 int R_ANAL_OP_DIR_WRITE ;



 int R_ANAL_OP_TYPE_MASK ;






__attribute__((used)) static void set_opdir(RAnalOp *op, cs_insn *insn) {
 switch (op->type & R_ANAL_OP_TYPE_MASK) {
 case 132:
  switch (INSOP(0).type) {
  case 129:
   op->direction = R_ANAL_OP_DIR_WRITE;
   break;
  case 128:
   if (INSOP(1).type == 129) {
    op->direction = R_ANAL_OP_DIR_READ;
   }
   break;
  default:
   break;
  }
  break;
 case 133:
  op->direction = R_ANAL_OP_DIR_REF;
  break;
 case 135:
 case 134:
 case 130:
 case 131:
  op->direction = R_ANAL_OP_DIR_EXEC;
  break;
 default:
  break;
 }
}
