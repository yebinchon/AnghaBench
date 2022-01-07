
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hexagon_operand ;
typedef int hexagon_insn ;


 int FALSE ;
 int TRUE ;
 int hexagon_dis_operand (int const*,int ,int ,int ,char*,char*,char**) ;
 int hexagon_extract_operand (int const*,int ,int ,char*,int*,char**) ;

int
hexagon_extract_predicate_operand
(const hexagon_operand *operand, hexagon_insn insn,
 char *enc, int *return_value, char **errmsg)
{
  char reg_name [100];
  int reg_num;


  if (!hexagon_dis_operand (operand, insn, 0, 0, enc, reg_name, errmsg))
    return FALSE;


  if (!hexagon_extract_operand (operand, insn, 0, enc, &reg_num, errmsg))
    return FALSE;

  *return_value = reg_num;
  return TRUE;
}
