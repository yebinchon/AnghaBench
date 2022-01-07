
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int mnemonic; } ;
typedef enum ud_mnemonic_code { ____Placeholder_ud_mnemonic_code } ud_mnemonic_code ;



enum ud_mnemonic_code
ud_insn_mnemonic(const struct ud *u)
{
  return u->mnemonic;
}
