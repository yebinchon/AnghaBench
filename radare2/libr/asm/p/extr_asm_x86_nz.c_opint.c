
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int st32 ;
struct TYPE_5__ {TYPE_1__* operands; } ;
struct TYPE_4__ {int type; int immediate; int sign; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int OT_CONSTANT ;

__attribute__((used)) static int opint(RAsm *a, ut8 *data, const Opcode *op) {
 int l = 0;
 if (op->operands[0].type & OT_CONSTANT) {
  st32 immediate = op->operands[0].immediate * op->operands[0].sign;
  if (immediate <= 255 && immediate >= -128) {
   data[l++] = 0xcd;
   data[l++] = immediate;
  }
 }
 return l;
}
