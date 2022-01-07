
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_9__ {int op_type; int member_0; } ;
typedef TYPE_1__ amd29k_instr_t ;
struct TYPE_11__ {int cpu; } ;
struct TYPE_10__ {int type; int size; int eob; scalar_t__ delay; void* fail; void* jump; void* val; void* ptr; } ;
typedef int RAnalOpMask ;
typedef TYPE_2__ RAnalOp ;
typedef TYPE_3__ RAnal ;





 int R_ANAL_OP_TYPE_NULL ;

 void* UT64_MAX ;
 scalar_t__ amd29k_instr_decode (int const*,int,TYPE_1__*,int ) ;
 int amd29k_instr_is_ret (TYPE_1__*) ;
 void* amd29k_instr_jump (int ,TYPE_1__*) ;

__attribute__((used)) static int analop(RAnal *a, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 op->delay = 0;
 op->type = R_ANAL_OP_TYPE_NULL;
 op->jump = op->fail = UT64_MAX;
 op->ptr = op->val = UT64_MAX;
 op->size = 4;
 op->eob = 0;



 amd29k_instr_t instruction = {0};
 if (amd29k_instr_decode (buf, len, &instruction, a->cpu)) {
  op->type = instruction.op_type;
  switch (op->type) {
  case 129:
   op->jump = amd29k_instr_jump (addr, &instruction);

   break;
  case 131:
   op->jump = amd29k_instr_jump (addr, &instruction);
   op->fail = addr + 4;

   break;
  case 130:
   if (amd29k_instr_is_ret (&instruction)) {
    op->type = 128;
    op->eob = 1;
   }

   break;
  case 128:
   op->eob = 1;

   break;
  default:
   op->delay = 0;
   break;
  }
 }

 return op->size;
}
