
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_5__ {TYPE_1__* operands; } ;
struct TYPE_4__ {scalar_t__ type; int immediate; } ;
typedef TYPE_2__ ArmOp ;


 scalar_t__ ARM_CONSTANT ;
 int UT32_MAX ;

__attribute__((used)) static ut32 exception(ArmOp *op, ut32 k) {
 ut32 data = UT32_MAX;

 if (op->operands[0].type == ARM_CONSTANT) {
  int n = op->operands[0].immediate;
  data = k;
  data += (((n / 8) & 0xff) << 16);
  data += n << 29;
 }
 return data;
}
