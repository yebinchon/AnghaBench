
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int const ut64 ;
struct TYPE_4__ {int size; void* type; void* type2; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* R_ANAL_OP_TYPE_IO ;
 void* R_ANAL_OP_TYPE_LOAD ;
 void* R_ANAL_OP_TYPE_NOP ;
 void* R_ANAL_OP_TYPE_ROR ;
 void* R_ANAL_OP_TYPE_TRAP ;
 void* R_ANAL_OP_TYPE_UJMP ;
 void* R_ANAL_OP_TYPE_XOR ;
 int memset (TYPE_1__*,char,int) ;

__attribute__((used)) static int mal_anal(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *data, int len, RAnalOpMask mask) {
 memset (op, '\0', sizeof (RAnalOp));
 if (len) {
  switch ((data[0] + addr) % 94) {
  case 4:
   op->type = R_ANAL_OP_TYPE_UJMP;
   break;
  case 5:
  case 23:
   op->type = R_ANAL_OP_TYPE_IO;
   break;
  case 39:
   op->type = R_ANAL_OP_TYPE_ROR;
   op->type2 = R_ANAL_OP_TYPE_LOAD;
   break;
  case 40:
   op->type = R_ANAL_OP_TYPE_LOAD;
   break;
  case 62:
   op->type = R_ANAL_OP_TYPE_XOR;
   op->type2 = R_ANAL_OP_TYPE_LOAD;
   break;
  case 81:
   op->type = R_ANAL_OP_TYPE_TRAP;
   break;
  default:
   op->type = R_ANAL_OP_TYPE_NOP;
  }
  return op->size = 1;
 }
 return 0;
}
