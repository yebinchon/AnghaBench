
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ud_mnemonic_code { ____Placeholder_ud_mnemonic_code } ud_mnemonic_code ;


 int UD_MAX_MNEMONIC_CODE ;
 char const** ud_mnemonics_str ;

const char*
ud_lookup_mnemonic(enum ud_mnemonic_code c)
{
  if (c < UD_MAX_MNEMONIC_CODE) {
    return ud_mnemonics_str[c];
  } else {
    return "???";
  }
}
