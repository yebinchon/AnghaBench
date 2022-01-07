
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct cr16_cmd {int instr; } ;


 scalar_t__ CR16_INSTR_MAXLEN ;
 scalar_t__ cr16_check_instrs_4bit_bndrs (size_t) ;
 size_t cr16_get_opcode_low (int ) ;
 char** instrs_4bit ;
 int snprintf (int ,scalar_t__,char*,char*) ;

__attribute__((used)) static inline int cr16_print_4bit_opcode(struct cr16_cmd *cmd, ut16 instr)
{
 if (cr16_check_instrs_4bit_bndrs(cr16_get_opcode_low(instr))) {
  return -1;
 }

 snprintf(cmd->instr, CR16_INSTR_MAXLEN - 1, "%s",
   instrs_4bit[cr16_get_opcode_low(instr)]);

 return 0;
}
