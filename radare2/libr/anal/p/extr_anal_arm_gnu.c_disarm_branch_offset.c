
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int disarm_branch_offset(unsigned int pc, unsigned int insoff) {
 unsigned int add = insoff << 2;

 if ((add & 0x02000000) == 0x02000000) {
  add |= 0xFC000000;
 }
 return add + pc + 8;
}
