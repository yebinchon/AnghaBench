
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char ut8 ;
typedef int ut64 ;
typedef int ut32 ;
struct TYPE_11__ {int big_endian; } ;
struct TYPE_10__ {int size; int jump; int fail; int ptr; int val; void* type; int addr; int family; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef TYPE_2__ RAnal ;
 scalar_t__ OP_0 ;
 scalar_t__ OP_1 ;
 scalar_t__ OP_2 ;
 scalar_t__ OP_3 ;
 int R_ANAL_OP_FAMILY_CPU ;
 void* R_ANAL_OP_TYPE_ILL ;
 scalar_t__ X_OP (int ) ;
 int X_OP2 (int ) ;
 int X_OP3 (int ) ;
 int X_RD (int ) ;
 int X_RS1 (int ) ;
 int anal_branch (TYPE_1__*,int ,int ) ;
 int anal_call (TYPE_1__*,int ,int ) ;
 int anal_jmpl (TYPE_2__*,TYPE_1__*,int ,int ) ;
 int memcpy (int *,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int sparc_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *data, int len, RAnalOpMask mask) {
 int sz = 4;
 ut32 insn;

 memset (op, 0, sizeof (RAnalOp));
 op->family = R_ANAL_OP_FAMILY_CPU;
 op->addr = addr;
 op->size = sz;
 op->jump = op->fail = -1;
 op->ptr = op->val = -1;

 if(!anal->big_endian) {
  ((char*)&insn)[0] = data[3];
  ((char*)&insn)[1] = data[2];
  ((char*)&insn)[2] = data[1];
  ((char*)&insn)[3] = data[0];
 } else {
  memcpy(&insn, data, sz);
 }

 if (X_OP(insn) == OP_0) {
  switch(X_OP2(insn)) {
  case 154:
  case 153:
   op->type = R_ANAL_OP_TYPE_ILL;
   sz = 0;
   break;
  case 159:
  case 157:
  case 158:
  case 156:
  case 155:
   anal_branch(op, insn, addr);
   break;
  }
 } else if(X_OP(insn) == OP_1) {
  anal_call(op, insn, addr);
 } else if(X_OP(insn) == OP_2) {
  switch(X_OP3(insn))
   {
  case 149:
  case 148:
  case 147:
  case 146:
  case 145:
   op->type = R_ANAL_OP_TYPE_ILL;
   sz = 0;
   break;
  case 152:
   if(X_RD(insn) == 1) {
    op->type = R_ANAL_OP_TYPE_ILL;
    sz = 0;
   }
   break;
  case 151:
   if(X_RS1(insn) == 1) {
    op->type = R_ANAL_OP_TYPE_ILL;
    sz = 0;
   }
   break;
  case 150:
   if(X_RS1(insn) != 0) {
    op->type = R_ANAL_OP_TYPE_ILL;
    sz = 0;
   }
   break;

  case 144:
   anal_jmpl(anal, op, insn, addr);
   break;
   }
 } else if (X_OP(insn) == OP_3) {
  switch(X_OP3(insn)) {
  case 143:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
   op->type = R_ANAL_OP_TYPE_ILL;
   sz = 0;
   break;
   }
 }

 return sz;
}
