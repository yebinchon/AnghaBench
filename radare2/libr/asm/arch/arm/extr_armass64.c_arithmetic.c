
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_5__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int reg; } ;
typedef TYPE_2__ ArmOp ;


 int ARM_GPR ;
 int UT32_MAX ;

__attribute__((used)) static ut32 arithmetic (ArmOp *op, int k) {
 ut32 data = UT32_MAX;
 if (op->operands_count < 3) {
  return data;
 }

 if (!(op->operands[0].type & ARM_GPR &&
       op->operands[1].type & ARM_GPR)) {
  return data;
 }
 if (op->operands[2].type & ARM_GPR) {
  k -= 6;
 }

 data = k;
 data += op->operands[0].reg << 24;
 data += (op->operands[1].reg & 7) << (24 + 5);
 data += (op->operands[1].reg >> 3) << 16;
 if (op->operands[2].type & ARM_GPR) {
  data += op->operands[2].reg << 8;
 } else {
  data += (op->operands[2].reg & 0x3f) << 18;
  data += (op->operands[2].reg >> 6) << 8;
 }
 return data;
}
