
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud_operand {scalar_t__ type; scalar_t__ base; } ;


 scalar_t__ UD_OP_REG ;
 scalar_t__ UD_R_AL ;
 scalar_t__ UD_R_R15 ;

int
ud_opr_is_gpr(const struct ud_operand *opr)
{
  return opr->type == UD_OP_REG &&
         opr->base >= UD_R_AL &&
         opr->base <= UD_R_R15;
}
