
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int direction; } ;
typedef TYPE_1__ RAnalOp ;


 int R_ANAL_OP_DIR_EXEC ;
 int R_ANAL_OP_DIR_READ ;
 int R_ANAL_OP_DIR_REF ;
 int R_ANAL_OP_DIR_WRITE ;




 int R_ANAL_OP_TYPE_MASK ;




__attribute__((used)) static void set_opdir(RAnalOp *op) {
 switch (op->type & R_ANAL_OP_TYPE_MASK) {
 case 131:
  op->direction = R_ANAL_OP_DIR_READ;
  break;
 case 130:
  op->direction = R_ANAL_OP_DIR_WRITE;
  break;
 case 132:
  op->direction = R_ANAL_OP_DIR_REF;
  break;
 case 134:
 case 133:
 case 128:
 case 129:
  op->direction = R_ANAL_OP_DIR_EXEC;
  break;
 default:
  break;
        }
}
