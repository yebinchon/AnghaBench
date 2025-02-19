
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;
struct v850_cmd {int operands; int instr; } ;


 scalar_t__ V850_INSTR_MAXLEN ;
 char** bit_instrs ;
 int get_reg1 (int) ;
 int r_read_at_le16 (int const*,int) ;
 int r_read_le16 (int const*) ;
 int snprintf (int ,scalar_t__,char*,...) ;

__attribute__((used)) static int decode_bit_op(const ut8 *instr, int len, struct v850_cmd *cmd) {
 if (len < 4) {
  return -1;
 }

 ut16 word1 = r_read_le16 (instr);
 ut16 word2 = r_read_at_le16 (instr, 2);
 snprintf (cmd->instr, V850_INSTR_MAXLEN - 1, "%s", bit_instrs[word1 >> 14]);
 ut8 reg1 = get_reg1 (word1);
 snprintf (cmd->operands, V850_INSTR_MAXLEN - 1, "%u, 0x%x[r%d]",
   (word1 >> 11) & 0x7, word2, reg1);
 return 4;
}
