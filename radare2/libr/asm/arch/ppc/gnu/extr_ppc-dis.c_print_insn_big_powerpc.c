
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int * private_data; } ;
typedef int bfd_vma ;


 int POWERPC_DIALECT (struct disassemble_info*) ;
 int powerpc_init_dialect (struct disassemble_info*) ;
 int print_insn_powerpc (int ,struct disassemble_info*,int,int ) ;

int
print_insn_big_powerpc (bfd_vma memaddr, struct disassemble_info *info)
{
 if (info->private_data == ((void*)0) && !powerpc_init_dialect (info)) {
  return -1;
 }
 return print_insn_powerpc (memaddr, info, 1, POWERPC_DIALECT (info));
}
