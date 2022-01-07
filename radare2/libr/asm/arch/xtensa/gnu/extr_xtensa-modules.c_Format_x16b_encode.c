
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static void
Format_x16b_encode (xtensa_insnbuf insn)
{
  insn[0] = 0xc;
  insn[1] = 0;
}
