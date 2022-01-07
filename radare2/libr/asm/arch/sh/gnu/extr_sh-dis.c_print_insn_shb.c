
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {scalar_t__ flags; } ;
typedef int bfd_vma ;


 int print_insn_shx (int ,struct disassemble_info*) ;

int
print_insn_shb (bfd_vma memaddr, struct disassemble_info *info)
{
  int r;

  info->flags = 0;
  r = print_insn_shx (memaddr, info);
  return r;
}
