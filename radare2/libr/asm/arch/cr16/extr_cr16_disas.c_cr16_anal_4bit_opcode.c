
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
struct cr16_cmd {int type; } ;
 int CR16_TYPE_ADD ;
 int CR16_TYPE_AND ;
 int CR16_TYPE_BIT ;
 int CR16_TYPE_CMP ;
 int CR16_TYPE_MOV ;
 int CR16_TYPE_MUL ;
 int CR16_TYPE_OR ;
 int CR16_TYPE_SHIFT ;
 int CR16_TYPE_SUB ;
 int CR16_TYPE_XOR ;

 int cr16_get_opcode_low (int const) ;

__attribute__((used)) static inline void cr16_anal_4bit_opcode(const ut16 in, struct cr16_cmd *cmd)
{
 switch (cr16_get_opcode_low(in)) {
 case 139:
 case 140:
  cmd->type = CR16_TYPE_ADD;
  break;
 case 136:
  cmd->type = CR16_TYPE_BIT;
  break;
 case 132:
  cmd->type = CR16_TYPE_MUL;
  break;
 case 129:
 case 130:
  cmd->type = CR16_TYPE_SUB;
  break;
 case 135:
  cmd->type = CR16_TYPE_CMP;
  break;
 case 128:
  cmd->type = CR16_TYPE_XOR;
  break;
 case 131:
  cmd->type = CR16_TYPE_OR;
  break;
 case 137:
 case 134:
  cmd->type = CR16_TYPE_SHIFT;
  break;
 case 133:
  cmd->type = CR16_TYPE_MOV;
  break;
 case 138:
  cmd->type = CR16_TYPE_AND;
  break;
 }
}
