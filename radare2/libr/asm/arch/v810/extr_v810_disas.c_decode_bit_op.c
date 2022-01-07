
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut16 ;
struct v810_cmd {int instr; } ;


 size_t REG1 (int const) ;
 scalar_t__ V810_INSTR_MAXLEN ;
 char** bit_instrs ;
 int snprintf (int ,scalar_t__,char*,char*) ;

__attribute__((used)) static int decode_bit_op(const ut16 instr, struct v810_cmd *cmd) {
 ut8 subop;

 subop = REG1(instr);
 snprintf (cmd->instr, V810_INSTR_MAXLEN - 1, "%s", bit_instrs[subop]);

 return 2;
}
