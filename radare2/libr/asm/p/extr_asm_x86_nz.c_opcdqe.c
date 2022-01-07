
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int bits; } ;
typedef TYPE_1__ RAsm ;
typedef int Opcode ;


 int is_valid_registers (int const*) ;

__attribute__((used)) static int opcdqe(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;
 if (a->bits == 64) {
  data[l++] = 0x48;
 }
 data[l++] = 0x98;
 return l;
}
