
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {int size; int fail; void* jump; int type; } ;
typedef TYPE_1__ RAnalOp ;
typedef int RAnal ;


 int R_ANAL_OP_TYPE_CALL ;
 int R_ANAL_OP_TYPE_CJMP ;
 int R_ANAL_OP_TYPE_CMP ;
 int R_ANAL_OP_TYPE_JMP ;
 int R_ANAL_OP_TYPE_LOAD ;
 int R_ANAL_OP_TYPE_NULL ;
 int R_ANAL_OP_TYPE_RET ;
 void* getaddr (int ,int const*) ;
 int hackyArmAnal (int *,TYPE_1__*,int const*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int arm_op64(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *d, int len) {
 memset (op, 0, sizeof (RAnalOp));
 if (d[3] == 0) {
  return -1;
 }
 int haa = hackyArmAnal (anal, op, d, len);
 if (haa > 0) {
  return haa;
 }
 op->size = 4;
 op->type = R_ANAL_OP_TYPE_NULL;
 if (d[0] == 0xc0 && d[3] == 0xd6) {

  op->type = R_ANAL_OP_TYPE_RET;
 }
 switch (d[3]) {
 case 0x71:
 case 0xeb:
  op->type = R_ANAL_OP_TYPE_CMP;
  break;
 case 0xb8:
 case 0xb9:
 case 0xf8:
 case 0xa9:
 case 0xf9:
  op->type = R_ANAL_OP_TYPE_LOAD;
  break;
 case 0x91:
 case 0x52:
 case 0x94:
 case 0x97:
  op->type = R_ANAL_OP_TYPE_CALL;
  op->jump = getaddr (addr, d);
  op->fail = addr + 4;
  break;
 case 0x54:
  op->type = R_ANAL_OP_TYPE_CJMP;
  op->jump = addr + (4 * ((d[0] >> 4) | (d[1] << 8) | (d[2] << 16)));
  op->fail = addr + 4;
  break;
 case 0x17:
 case 0x14:
  op->type = R_ANAL_OP_TYPE_JMP;
  op->jump = getaddr (addr, d);
  op->fail = addr + 4;
  break;
 }
 return op->size;
}
