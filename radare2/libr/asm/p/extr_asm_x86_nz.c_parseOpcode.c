
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int extended; int sign; int is_good_flag; scalar_t__ immediate; void** regs; void* reg; scalar_t__ type; } ;
struct TYPE_4__ {int has_bnd; char const* mnemonic; int is_short; int operands_count; TYPE_2__* operands; } ;
typedef int RAsm ;
typedef TYPE_1__ Opcode ;


 int MAX_OPERANDS ;
 void* X86R_UNDEFINED ;
 int parseOperand (int *,char*,TYPE_2__*,int) ;
 int r_str_ncasecmp (char*,char*,int) ;
 char const* r_str_ndup (char const*,int) ;
 char* strchr (char const*,char) ;
 char const* strdup (char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int parseOpcode(RAsm *a, const char *op, Opcode *out) {
 out->has_bnd = 0;
 bool isrepop = 0;
 if (!strncmp (op, "bnd ", 4)) {
  out->has_bnd = 1;
  op += 4;
 }
 char *args = strchr (op, ' ');
 out->mnemonic = args ? r_str_ndup (op, args - op) : strdup (op);
 out->operands[0].type = out->operands[1].type = 0;
 out->operands[0].extended = out->operands[1].extended = 0;
 out->operands[0].reg = out->operands[0].regs[0] = out->operands[0].regs[1] = X86R_UNDEFINED;
 out->operands[1].reg = out->operands[1].regs[0] = out->operands[1].regs[1] = X86R_UNDEFINED;
 out->operands[0].immediate = out->operands[1].immediate = 0;
 out->operands[0].sign = out->operands[1].sign = 1;
 out->operands[0].is_good_flag = out->operands[1].is_good_flag = 1;
 out->is_short = 0;
 out->operands_count = 0;
 if (args) {
  args++;
 } else {
  return 1;
 }
 if (!r_str_ncasecmp (args, "short", 5)) {
  out->is_short = 1;
  args += 5;
 }
 if (!strncmp (out->mnemonic, "rep", 3)) {
  isrepop = 1;
 }
 parseOperand (a, args, &(out->operands[0]), isrepop);
 out->operands_count = 1;
 while (out->operands_count < MAX_OPERANDS) {
  args = strchr (args, ',');
  if (!args) {
   break;
  }
  args++;
  parseOperand (a, args, &(out->operands[out->operands_count]), isrepop);
  out->operands_count++;
 }
 return 0;
}
