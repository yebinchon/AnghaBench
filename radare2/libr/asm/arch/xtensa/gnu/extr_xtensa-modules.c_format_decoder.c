
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* xtensa_insnbuf ;



__attribute__((used)) static int
format_decoder (const xtensa_insnbuf insn)
{
 if ((insn[0] & 0x8) == 0 && (insn[1] & 0) == 0) {
  return 0;
 }
 if ((insn[0] & 0xc) == 0x8 && (insn[1] & 0) == 0) {
  return 1;
 }
 if ((insn[0] & 0xe) == 0xc && (insn[1] & 0) == 0) {
  return 2;
 }
 if ((insn[0] & 0xf) == 0xe && (insn[1] & 0) == 0) {
  return 3;
 }
 if ((insn[0] & 0xf) == 0xf && (insn[1] & 0x80000000) == 0) {
  return 4;
 }
 return -1;
}
