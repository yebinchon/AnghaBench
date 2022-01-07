
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct disassemble_info {scalar_t__ flavour; int endian_code; TYPE_1__* section; } ;
typedef int bfd_vma ;
struct TYPE_4__ {int e_flags; } ;
struct TYPE_3__ {int owner; } ;


 int BFD_ENDIAN_LITTLE ;
 int EF_ARM_BE8 ;
 int FALSE ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_2__* elf_elfheader (int ) ;
 int print_insn (int ,struct disassemble_info*,int ) ;

int
print_insn_big_arm (bfd_vma pc, struct disassemble_info *info)
{
  return print_insn (pc, info, FALSE);
}
