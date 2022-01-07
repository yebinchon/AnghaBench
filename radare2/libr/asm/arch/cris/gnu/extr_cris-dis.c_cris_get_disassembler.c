
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassembler_ftype ;
typedef int bfd ;


 scalar_t__ bfd_get_symbol_leading_char (int *) ;
 int print_insn_cris_with_register_prefix ;
 int print_insn_cris_without_register_prefix ;
 int print_insn_crisv10_v32_with_register_prefix ;
 int print_insn_crisv10_v32_without_register_prefix ;
 int print_insn_crisv32_with_register_prefix ;
 int print_insn_crisv32_without_register_prefix ;

disassembler_ftype
cris_get_disassembler (bfd *abfd)
{
 return print_insn_crisv32_without_register_prefix;

}
