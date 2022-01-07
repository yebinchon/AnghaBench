
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
struct TYPE_5__ {int operands; int opcode; } ;
typedef TYPE_1__ aarch64_inst ;


 int print_comment (TYPE_1__ const*,struct disassemble_info*) ;
 int print_mnemonic_name (TYPE_1__ const*,struct disassemble_info*) ;
 int print_operands (int ,int ,int ,struct disassemble_info*) ;

__attribute__((used)) static void
print_aarch64_insn (bfd_vma pc, const aarch64_inst *inst,
      struct disassemble_info *info)
{
  print_mnemonic_name (inst, info);
  print_operands (pc, inst->opcode, inst->operands, info);
  print_comment (inst, info);
}
