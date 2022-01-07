
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static int mips_j(ut8 *b, int op, int addr) {
 addr /= 4;
 b[3] = ((op<<2)&0xfc) | ((addr>>24)&3);
 b[2] = (addr>>16)&0xff;
 b[1] = (addr>>8) &0xff;
 b[0] = addr & 0xff;
 return 4;
}
