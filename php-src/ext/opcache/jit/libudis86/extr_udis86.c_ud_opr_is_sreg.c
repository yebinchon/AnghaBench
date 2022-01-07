
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud_operand {scalar_t__ type; scalar_t__ base; } ;


 scalar_t__ UD_OP_REG ;
 scalar_t__ UD_R_ES ;
 scalar_t__ UD_R_GS ;

int
ud_opr_is_sreg(const struct ud_operand *opr)
{
  return opr->type == UD_OP_REG &&
         opr->base >= UD_R_ES &&
         opr->base <= UD_R_GS;
}
