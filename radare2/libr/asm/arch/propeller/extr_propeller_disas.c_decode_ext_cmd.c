
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int ut16 ;
struct propeller_cmd {int operands; int instr; } ;






 int PROP_INSTR_MAXLEN ;




 char** ext_instrs ;
 int get_dst (int ) ;
 int get_opcode_ext (int ) ;
 int snprintf (int ,int ,char*,...) ;

__attribute__((used)) static int decode_ext_cmd (struct propeller_cmd *cmd, ut32 instr) {
 ut16 opcode;

 opcode = get_opcode_ext (instr);

 switch (opcode) {
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   snprintf (cmd->instr, PROP_INSTR_MAXLEN - 1,
     "%s", ext_instrs[135]);
   snprintf (cmd->operands, PROP_INSTR_MAXLEN - 1,
     "%d", get_dst (instr));
   return 4;
   break;
 }

 return -1;
}
