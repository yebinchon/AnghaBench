
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassemble_info ;
typedef int bfd_vma ;


 int BFD_ENDIAN_LITTLE ;
 int print_insn_nios2 (int ,int *,int ) ;

int
print_insn_little_nios2 (bfd_vma address, disassemble_info *info)
{
  return print_insn_nios2 (address, info, BFD_ENDIAN_LITTLE);
}
