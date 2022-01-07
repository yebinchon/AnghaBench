
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sex(int bits, int imm) {
 int maxsint = (1 << (bits - 1)) - 1;
 int maxuint = (1 << (bits)) - 1;

 if (imm > maxsint) {

  imm = -maxuint + imm - 1;
 }
 return imm;
}
