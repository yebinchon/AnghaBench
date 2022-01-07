
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ (* do_reloc ) (int*,int) ;} ;
typedef TYPE_1__ xtensa_operand_internal ;
typedef int xtensa_opcode ;
typedef int xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int uint32 ;


 int XTENSA_OPERAND_IS_PCRELATIVE ;
 TYPE_1__* get_operand (int *,int ,int) ;
 int sprintf (int ,char*,int,int) ;
 int strcpy (int ,char*) ;
 scalar_t__ stub1 (int*,int) ;
 int xtensa_isa_bad_value ;
 int xtensa_isa_internal_error ;
 int xtisa_errno ;
 int xtisa_error_msg ;

int
xtensa_operand_do_reloc (xtensa_isa isa, xtensa_opcode opc, int opnd,
    uint32 *valp, uint32 pc)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_operand_internal *intop;

  intop = get_operand (intisa, opc, opnd);
  if (!intop) {
   return -1;
  }

  if ((intop->flags & XTENSA_OPERAND_IS_PCRELATIVE) == 0) {
   return 0;
  }

  if (!intop->do_reloc)
    {
      xtisa_errno = xtensa_isa_internal_error;
      strcpy (xtisa_error_msg, "operand missing do_reloc function");
      return -1;
    }

  if ((*intop->do_reloc) (valp, pc))
    {
      xtisa_errno = xtensa_isa_bad_value;
      sprintf (xtisa_error_msg,
        "do_reloc failed for value 0x%08x at PC 0x%08x", *valp, pc);
      return -1;
    }

  return 0;
}
