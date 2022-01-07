
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hexagon_operand ;
typedef int hexagon_opcode ;
typedef int hexagon_insn ;


 int FALSE ;
 int HEXAGON_OPERAND_IS_REGISTER ;
 scalar_t__ hexagon_encode_operand (int const*,int *,int const*,int,int *,int ,int ,char**) ;
 int hexagon_gp_regs ;
 int hexagon_gp_regs_count ;
 int hexagon_reg_num (int const*,char**,char,int ,int ,int *,char) ;

char *
hexagon_parse_reg
(const hexagon_operand *operand, hexagon_insn *insn, const hexagon_opcode *opcode,
 char *input, long *val, int *flag, char **errmsg)
{
  int reg;

  reg = hexagon_reg_num (operand, &input, 'r', hexagon_gp_regs, hexagon_gp_regs_count, ((void*)0), '\0');
  if (reg < 0)
    return (((void*)0));

  if (hexagon_encode_operand
        (operand, insn, opcode, reg, ((void*)0), FALSE, FALSE, errmsg))
    {
      if (flag)
        *flag = HEXAGON_OPERAND_IS_REGISTER;

      *val = reg;
      return (input);
    }

  return (((void*)0));
}
