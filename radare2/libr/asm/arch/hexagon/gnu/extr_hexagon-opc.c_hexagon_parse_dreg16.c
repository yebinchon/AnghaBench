
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hexagon_operand ;
typedef int hexagon_opcode ;
typedef int hexagon_insn ;


 int FALSE ;
 int HEXAGON_OPERAND_IS_PAIR ;
 scalar_t__ hexagon_encode_operand (int const*,int *,int const*,int,int *,int ,int ,char**) ;
 int hexagon_gp_regs ;
 int hexagon_gp_regs_count ;
 int hexagon_reg_num (int const*,char**,char,int ,int ,int *,char) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static char *
hexagon_parse_dreg16
(const hexagon_operand *operand, hexagon_insn *insn, const hexagon_opcode *opcode,
 char *input, long *val, int *flag, char **errmsg)
{
  int reg_odd;
  int reg_even;

  reg_odd = hexagon_reg_num (operand, &input, 'r', hexagon_gp_regs, hexagon_gp_regs_count, ((void*)0), '\0');
  reg_even = hexagon_reg_num (operand, &input, ':', hexagon_gp_regs, hexagon_gp_regs_count, ((void*)0), '\0');
  if (reg_odd < 0 || reg_even < 0)
    return (((void*)0));


  if (reg_odd % 2 != 1)
    {
      if (errmsg)
        {
            static char buf [100];
            sprintf (buf, "invalid odd register number: %d", reg_odd);
            *errmsg = buf;
        }
      return (((void*)0));
    }


  if (reg_even % 2 != 0)
    {
      if (errmsg)
        {
            static char buf [100];
            sprintf (buf, "invalid even register number: %d", reg_even);
            *errmsg = buf;
        }
      return (((void*)0));
    }


  if (reg_odd != reg_even + 1)
    {
      if (errmsg)
        {
            static char buf [100];
            sprintf (buf, "registers must be consecutive: %d:%d",
                      reg_odd, reg_even);
            *errmsg = buf;
        }
      return (((void*)0));
    }

  if (((reg_odd < 1 || reg_odd > 31))
      || ((reg_even < 0 || reg_even > 30)))
    return (((void*)0));

  if (hexagon_encode_operand
        (operand, insn, opcode, reg_even, ((void*)0), FALSE, FALSE, errmsg))
    {
      if (flag)
        *flag = HEXAGON_OPERAND_IS_PAIR;

      *val = reg_even;
      return (input);
    }

  return (((void*)0));
}
