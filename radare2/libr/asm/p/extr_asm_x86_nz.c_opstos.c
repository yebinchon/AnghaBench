
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_4__ {int mnemonic; } ;
typedef int RAsm ;
typedef TYPE_1__ Opcode ;


 int is_valid_registers (TYPE_1__ const*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int opstos(RAsm *a, ut8 *data, const Opcode *op) {
 is_valid_registers (op);
 int l = 0;
 if (!strcmp(op->mnemonic, "stosw")) {
  data[l++] = 0x66;
 }
 if (!strcmp(op->mnemonic, "stosb")) {
  data[l++] = 0xaa;
 } else if (!strcmp(op->mnemonic, "stosw")) {
  data[l++] = 0xab;
 } else if (!strcmp(op->mnemonic, "stosd")) {
  data[l++] = 0xab;
 }
 return l;
}
