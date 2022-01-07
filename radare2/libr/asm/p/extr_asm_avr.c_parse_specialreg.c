
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int operandType; int reg; } ;


 int OPERAND_YPQ ;
 int OPERAND_ZPQ ;
 int REGS_TABLE ;
 TYPE_1__* RegsTable ;
 int strlen (char const*) ;
 int strncmp (int ,char const*,int) ;

__attribute__((used)) static int parse_specialreg(const char *reg) {
 const int len = strlen (reg);
 int i, found = -1;

 if (len > 0) {
  for (i = 0; i < REGS_TABLE; i++) {
   if (!strncmp (RegsTable[i].reg, reg, 4)) {
    found = RegsTable[i].operandType;
    break;
   }
  }


  if (found == -1 && reg[1] == '+') {
   if (reg[0] == 'y' && len > 2) {
    found = OPERAND_YPQ;
   } else if (reg[0] == 'z' && len > 2) {
    found = OPERAND_ZPQ;
   }
  }
  if (found == -1 && reg[2] == '+') {
   if (reg[0] == 'y' && len > 2) {
    found = OPERAND_YPQ;
   } else if (reg[0] == 'z' && len > 2) {
    found = OPERAND_ZPQ;
   }
  }
 }
 return found;
}
