
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ hexagon_operand ;
typedef int hexagon_opcode ;
typedef int hexagon_insn ;
struct TYPE_8__ {int flags; char* name; } ;


 int FALSE ;
 int HEXAGON_OPERAND_IS_INVALID ;
 int HEXAGON_OPERAND_IS_SYSTEM ;
 int HEXAGON_OPERAND_IS_WRITE ;
 int HEXAGON_REG_IS_READONLY ;
 scalar_t__ hexagon_encode_operand (TYPE_1__ const*,int *,int const*,int,int *,int ,int ,char**) ;
 int hexagon_reg_num (TYPE_1__ const*,char**,char,TYPE_2__*,int ,size_t*,char) ;
 TYPE_2__* hexagon_supervisor_regs ;
 int hexagon_supervisor_regs_count ;
 int hexagon_verify_hw ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static char *
hexagon_parse_sreg
(const hexagon_operand *operand, hexagon_insn *insn, const hexagon_opcode *opcode,
 char *input, long *val, int *flag, char **errmsg)
{
  size_t regn;
  int reg;
  static char buf [150];

  reg = hexagon_reg_num (operand, &input, '\0', hexagon_supervisor_regs, hexagon_supervisor_regs_count, &regn, '\0');
  if (reg < 0)
    return (((void*)0));

  if (flag)
    *flag = 0;

  if (!hexagon_verify_hw)
    if ((operand->flags & HEXAGON_OPERAND_IS_WRITE)
        && (hexagon_supervisor_regs [regn].flags & HEXAGON_REG_IS_READONLY))
      {
        if (errmsg)
          {
            sprintf (buf, "cannot write to read-only register `%s'.",
                     hexagon_supervisor_regs [regn].name);
            *errmsg = buf;
          }
        if (flag)
          *flag |= HEXAGON_OPERAND_IS_INVALID;
      }

  if (hexagon_encode_operand
        (operand, insn, opcode, reg, ((void*)0), FALSE, FALSE, errmsg))
    {
      if (flag)
        *flag |= HEXAGON_OPERAND_IS_SYSTEM;

      *val = reg;
      return (input);
    }

  return (((void*)0));
}
