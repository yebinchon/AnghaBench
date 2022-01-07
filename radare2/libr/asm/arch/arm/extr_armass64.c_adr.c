
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
struct TYPE_5__ {TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int immediate; int reg; } ;
typedef TYPE_2__ ArmOp ;


 int ARM_CONSTANT ;
 int UT32_MAX ;

__attribute__((used)) static ut32 adr(ArmOp *op, int addr) {
 ut32 data = UT32_MAX;
 ut64 at = 0LL;

 if (op->operands[1].type & ARM_CONSTANT) {

  at = op->operands[1].immediate - addr;
  at /= 4;
 }
 data = 0x00000030;
 data += 0x01000000 * op->operands[0].reg;
 ut8 b0 = at;
 ut8 b1 = (at >> 3) & 0xff;
 ut8 b2 = (at >> (8 + 7)) & 0xff;
 data += b0 << 29;
 data += b1 << 16;
 data += b2 << 24;
 return data;
}
