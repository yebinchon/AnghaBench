
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* decode ) (int*) ;} ;
typedef TYPE_1__ xtensa_operand_internal ;
typedef int xtensa_opcode ;
typedef int xtensa_isa_internal ;
typedef scalar_t__ xtensa_isa ;
typedef int uint32 ;


 TYPE_1__* get_operand (int *,int ,int) ;
 int sprintf (int ,char*,int) ;
 scalar_t__ stub1 (int*) ;
 int xtensa_isa_bad_value ;
 int xtisa_errno ;
 int xtisa_error_msg ;

int
xtensa_operand_decode (xtensa_isa isa, xtensa_opcode opc, int opnd,
         uint32 *valp)
{
  xtensa_isa_internal *intisa = (xtensa_isa_internal *) isa;
  xtensa_operand_internal *intop;

  intop = get_operand (intisa, opc, opnd);
  if (!intop) {
   return -1;
  }


  if (!intop->decode) {
   return 0;
  }

  if ((*intop->decode) (valp))
    {
      xtisa_errno = xtensa_isa_bad_value;
      sprintf (xtisa_error_msg, "cannot decode operand value 0x%08x", *valp);
      return -1;
    }
  return 0;
}
