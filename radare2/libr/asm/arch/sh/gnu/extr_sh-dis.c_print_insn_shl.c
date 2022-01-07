
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int flags; } ;
typedef int bfd_vma ;


 int LITTLE_BIT ;
 int print_insn_shx (int ,struct disassemble_info*) ;

int
print_insn_shl (bfd_vma memaddr, struct disassemble_info *info)
{
  int r;

  info->flags = LITTLE_BIT;
  r = print_insn_shx (memaddr, info);
  return r;
}
