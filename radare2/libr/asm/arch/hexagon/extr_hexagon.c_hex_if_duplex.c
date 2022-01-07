
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



inline bool hex_if_duplex(uint32_t insn_word)
{
 if ((insn_word & (3 << 14)) == 0) {
  return 1;
 }
 return 0;
}
