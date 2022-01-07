
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_4__ {int size; short jump; int eob; int fail; void* type; int addr; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 void* R_ANAL_OP_TYPE_CJMP ;
 void* R_ANAL_OP_TYPE_CMP ;
 void* R_ANAL_OP_TYPE_JMP ;
 void* R_ANAL_OP_TYPE_RET ;
 void* R_ANAL_OP_TYPE_SWI ;
 int memset (TYPE_1__*,char,int) ;

__attribute__((used)) static int ppc_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *bytes, int len, RAnalOpMask mask) {


 int opcode = (bytes[0] & 0xf8) >> 3;
 short baddr = ((bytes[2]<<8) | (bytes[3]&0xfc));
 int aa = bytes[3]&0x2;
 int lk = bytes[3]&0x1;



 memset (op, '\0', sizeof (RAnalOp));
 op->addr = addr;
 op->type = 0;
 op->size = 4;



 switch (opcode) {

 case 11:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 9:
  if (bytes[0] == 0x4e) {

  } else {
   op->jump = (aa)?(baddr):(addr+baddr);
   if (lk) {
    op->fail = addr + 4;
   }
  }
  op->eob = 1;
  break;
 case 6:
  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = (aa)?(baddr):(addr+baddr+4);
  op->eob = 1;
  break;
 case 8:

  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = (aa)?(baddr):(addr+baddr+4);
  op->fail = addr+4;
  op->eob = 1;
  break;
 case 19:
  op->type = R_ANAL_OP_TYPE_RET;
  if (lk) {
   op->jump = 0xFFFFFFFF;
   op->fail = addr+4;
  }
  op->eob = 1;
  break;
 }
 op->size = 4;
 return op->size;
}
