
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {TYPE_1__* operands; } ;
struct TYPE_5__ {int immediate; int sign; } ;
typedef int RAsm ;
typedef TYPE_2__ Opcode ;


 int is_valid_registers (TYPE_2__ const*) ;

__attribute__((used)) static int opaam(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;
 int immediate = op->operands[0].immediate * op->operands[0].sign;
 data[l++] = 0xd4;
 if (immediate == 0) {
  data[l++] = 0x0a;
 } else if (immediate < 256 && immediate > -129) {
  data[l++] = immediate;
 }
 return l;
}
