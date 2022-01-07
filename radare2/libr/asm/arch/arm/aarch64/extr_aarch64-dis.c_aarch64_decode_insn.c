
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int aarch64_operand_error ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ aarch64_opcode ;
typedef int aarch64_inst ;
typedef int aarch64_insn ;


 int DEBUG_TRACE (char*) ;
 int ERR_OK ;
 int ERR_UND ;
 TYPE_1__* aarch64_find_next_opcode (TYPE_1__ const*) ;
 int aarch64_opcode_decode (TYPE_1__ const*,int ,int *,int ,int *) ;
 TYPE_1__* aarch64_opcode_lookup (int ) ;
 int aarch64_verbose (char*,int ) ;
 scalar_t__ debug_dump ;
 int printf (char*) ;

int
aarch64_decode_insn (aarch64_insn insn, aarch64_inst *inst,
       bfd_boolean noaliases_p,
       aarch64_operand_error *errors)
{
  const aarch64_opcode *opcode = aarch64_opcode_lookup (insn);
  while (opcode != ((void*)0))
    {


      if (aarch64_opcode_decode (opcode, insn, inst, noaliases_p, errors) == 1)
 return ERR_OK;
      opcode = aarch64_find_next_opcode (opcode);
    }

  return ERR_UND;
}
