
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_6__ {int operands_count; TYPE_1__* operands; } ;
struct TYPE_5__ {int reg; } ;
typedef TYPE_2__ ArmOp ;


 int arithmetic (TYPE_2__*,int) ;

__attribute__((used)) static ut32 neg(ArmOp *op) {
 if (op->operands_count < 2) {
  return -1;
 }
 op->operands_count++;
 op->operands[2] = op->operands[1];
 op->operands[1].reg = 31;

 return arithmetic (op, 0xd1);
}
