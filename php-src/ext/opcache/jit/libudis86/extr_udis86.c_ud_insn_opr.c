
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud_operand {scalar_t__ type; } ;
struct ud {struct ud_operand const* operand; } ;


 scalar_t__ UD_NONE ;

const struct ud_operand*
ud_insn_opr(const struct ud *u, unsigned int n)
{
  if (n > 3 || u->operand[n].type == UD_NONE) {
    return ((void*)0);
  } else {
    return &u->operand[n];
  }
}
